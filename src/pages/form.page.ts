import { Locator, Page } from "playwright";
import { faker } from "@faker-js/faker";
import { PaginaBase } from "./base.page";

export type TipoCampo = "text" | "textarea" | "select" | "checkbox" | "radio" | "email" | "tel";

export interface ReglaNumerica {
  permiteNegativos?: boolean;
  permiteDecimales?: boolean;
}

export interface ReglasValidacionCampo {
  muestrasInvalidas?: string[];
  reglasNumericas?: ReglaNumerica;
}

export interface DefinicionCampoFormulario {
  nombre: string;
  selector: string;
  tipo: TipoCampo;
  valor?: string;
  validacion?: ReglasValidacionCampo;
  placeholderEsperado?: string;
}

export class PaginaFormulario extends PaginaBase {
  private readonly tiposConPlaceholder: TipoCampo[] = ["text", "textarea", "email", "tel", "select"];

  constructor(pagina: Page) {
    super(pagina);
  }

  async completarCamposSiExisten(campos: DefinicionCampoFormulario[]): Promise<void> {
    for (const campo of campos) {
      await this.pagina.waitForTimeout(1000);
      const localizador = this.pagina.locator(campo.selector);
      if ((await localizador.count()) === 0) {
        console.warn(
          `El campo "${campo.nombre}" no se encontró con el selector ${campo.selector}. Se omite en esta página.`
        );
        continue;
      }

      await this.validarPlaceholderSiAplica(localizador, campo);

      if (this.debeValidarCampo(campo)) {
        await this.verificarRechazoDeMuestrasInvalidas(localizador, campo);
      }

      switch (campo.tipo) {
        case "text":
          await localizador.fill(this.obtenerValor(campo));
          break;
        case "textarea":
        case "email":
          await localizador.fill(this.obtenerValor(campo));
          break;
        case "tel":
          await localizador.fill(this.obtenerValor(campo));
          break;
        case "select":
          await this.completarSelect(localizador, campo);
          break;
        case "checkbox":
          if (!(await localizador.isChecked())) {
            await localizador.check();
          }
          break;
        case "radio":
          await localizador.check();
          break;
        default:
          break;
      }
    }
  }

  async aceptarCookiesSiAparece(): Promise<void> {
    const candidatos = [
      this.pagina.getByRole("button", { name: /aceptar todas/i }),
      this.pagina.getByRole("button", { name: /aceptar/i }),
      this.pagina.getByRole("button", { name: /accept/i }),
    ];

    for (const locator of candidatos) {
      if (await locator.count()) {
        try {
          await locator.first().click({ timeout: 2000 });
          await this.pagina.waitForTimeout(300);
          return;
        } catch (error) {
          continue;
        }
      }
    }

    const selectoresAdicionales = [
      "#onetrust-accept-btn-handler",
      'button[id*="accept"]',
      'button[id*="Aceptar"]',
      'button[data-testid*="accept"]',
      'button:has-text("Aceptar")',
      '[aria-label*="Aceptar"]',
    ];

    for (const selector of selectoresAdicionales) {
      const boton = this.pagina.locator(selector).first();
      if (await boton.count()) {
        try {
          await boton.click({ timeout: 2000 });
          await this.pagina.waitForTimeout(300);
          return;
        } catch (error) {
          continue;
        }
      }
    }

    const iframeCandidatos = [
      this.pagina
        .frameLocator("#onetrust-consent-sdk")
        .locator("button#onetrust-accept-btn-handler"),
      this.pagina.frameLocator('iframe[title*="consent"]').locator('button:has-text("Accept")'),
      this.pagina.frameLocator('iframe[id*="onetrust"]').locator('button:has-text("Aceptar")'),
    ];

    for (const locator of iframeCandidatos) {
      try {
        const count = await locator.count();
        if (!count) {
          continue;
        }

        await locator.first().click({ timeout: 3000 });
        await this.pagina.waitForTimeout(300);
        return;
      } catch (error) {
        continue;
      }
    }
  }

  async enviarFormulario(): Promise<void> {
    await this.pagina.click('button[type="submit"]');
    await this.esperarRedInactiva();
  }

  async validarCampoOculto(nombreCampo: string, valorEsperado: string): Promise<void> {
    const campo = this.pagina.locator(`input[name="${nombreCampo}"]`).first();
    if (!(await campo.count())) {
      throw new Error(`No se encontró el campo oculto ${nombreCampo} en el formulario.`);
    }

    const tipo = (await campo.getAttribute("type")) ?? "";
    if (tipo.toLowerCase() !== "hidden") {
      throw new Error(`El campo ${nombreCampo} no es de tipo hidden (type=${tipo}).`);
    }

    const valorActual = (await campo.inputValue()).trim();
    if (valorActual !== valorEsperado.trim()) {
      throw new Error(
        `El campo oculto ${nombreCampo} tiene el valor ${valorActual} y se esperaba ${valorEsperado}.`
      );
    }
  }

  async contieneIdFormulario(idFormulario?: string): Promise<boolean> {
    if (!idFormulario) return false;
    const selectores = [
      `input[value="${idFormulario}"]`,
      `[data-form-id="${idFormulario}"]`,
      `[data-formid="${idFormulario}"]`,
      `[name*="FormId"][value="${idFormulario}"]`,
    ];
    for (const selector of selectores) {
      const localizador = this.pagina.locator(selector);
      if (await localizador.count()) {
        return true;
      }
    }
    return false;
  }

  async validarThankYouPage(codigoPais?: string, codigoProvincia?: string): Promise<void> {
    await this.esperarRedInactiva();

    const paginaVisible = await this.esThankYouPageVisible();
    if (!paginaVisible) {
      throw new Error("No se detectó la pantalla de agradecimiento después de enviar el formulario.");
    }

    const mensajeCorrecto = await this.contieneMensajeThankYou();
    if (!mensajeCorrecto) {
      throw new Error('La pantalla final no muestra el texto "Thank you" ni "Gracias".');
    }

    const urlActual = this.pagina.url();
    const urlNormalizada = urlActual.toLowerCase();
    const codigoPaisNormalizado = this.normalizarParametroUrl(codigoPais);
    const codigoProvinciaNormalizado = this.normalizarParametroUrl(codigoProvincia);

    if (codigoPaisNormalizado && !urlNormalizada.includes(codigoPaisNormalizado)) {
      throw new Error(
        `La URL de la pantalla de agradecimiento (${urlActual}) no contiene el código de país "${codigoPais}".`
      );
    }

    if (codigoProvinciaNormalizado && !urlNormalizada.includes(codigoProvinciaNormalizado)) {
      throw new Error(
        `La URL de la pantalla de agradecimiento (${urlActual}) no contiene el código de provincia "${codigoProvincia}".`
      );
    }
  }

  private debeVerificarPlaceholder(campo: DefinicionCampoFormulario): boolean {
    return this.tiposConPlaceholder.includes(campo.tipo);
  }

  private async validarPlaceholderSiAplica(
    localizador: Locator,
    campo: DefinicionCampoFormulario
  ): Promise<void> {
    if (!this.debeVerificarPlaceholder(campo)) {
      return;
    }

    const placeholder = await this.obtenerPlaceholder(localizador, campo);
    if (campo.placeholderEsperado) {
      const esperado = campo.placeholderEsperado.trim();
      if (placeholder !== esperado) {
        throw new Error(
          `El campo "${campo.nombre}" no tiene el placeholder esperado. Actual: "${placeholder}", esperado: "${esperado}".`
        );
      }
      return;
    }

    if (!placeholder) {
      throw new Error(`El campo "${campo.nombre}" no tiene placeholder configurado.`);
    }
  }

  private async obtenerPlaceholder(localizador: Locator, campo: DefinicionCampoFormulario): Promise<string> {
    if (campo.tipo === "select") {
      return localizador.evaluate((elemento) => {
        if (!(elemento instanceof HTMLSelectElement)) {
          return "";
        }
        const primeraOpcion = elemento.options?.[0];
        if (!primeraOpcion) {
          return "";
        }
        return (primeraOpcion.text?.trim() || primeraOpcion.value?.trim() || "");
      });
    }
    return (await localizador.getAttribute("placeholder"))?.trim() ?? "";
  }

  private async contieneMensajeThankYou(): Promise<boolean> {
    const textoPagina = (await this.pagina.textContent("body")) ?? "";
    return /\bthank you\b/i.test(textoPagina) || /\bgracias\b/i.test(textoPagina);
  }

  private async esThankYouPageVisible(): Promise<boolean> {
    const candidatos = [
      this.pagina.getByRole("heading", { name: /thank/i }),
      this.pagina.getByText(/thank you/i),
      this.pagina.getByText(/gracias/i),
      this.pagina.locator('[data-testid*="thank-you"]'),
      this.pagina.locator(".mktoThankYouMessage"),
    ];

    for (const locator of candidatos) {
      try {
        const visible = await locator.first().isVisible();
        if (visible) {
          return true;
        }
      } catch {
        continue;
      }
    }

    return false;
  }

  private normalizarParametroUrl(valor?: string): string {
    if (!valor) {
      return "";
    }

    const limpio = valor.trim().toLowerCase();
    if (!limpio || limpio === "none" || limpio === "null") {
      return "";
    }

    return limpio;
  }

  private obtenerValor(campo: DefinicionCampoFormulario): string {
    if (campo.valor) {
      return campo.valor;
    }

    switch (campo.tipo) {
      case "email":
        return faker.internet.email({ provider: "example.com" });
      case "tel":
        return `+34${faker.string.numeric(9)}`;
      case "textarea":
        return faker.lorem.sentence(6);
      default:
        return faker.person.firstName();
    }
  }

  private async completarSelect(
    localizador: Locator,
    campo: DefinicionCampoFormulario
  ): Promise<void> {
    if (campo.valor) {
      await localizador.selectOption(campo.valor);
      return;
    }

    const valorOpcion = await localizador.evaluate((elemento) => {
      const select = elemento as HTMLSelectElement;
      const opcion = Array.from(select.options).find((opt) => !opt.disabled && opt.value);
      return opcion?.value ?? "";
    });

    if (valorOpcion) {
      await localizador.selectOption(valorOpcion);
    }
  }

  private debeValidarCampo(campo: DefinicionCampoFormulario): boolean {
    return ["text", "textarea", "email", "tel"].includes(campo.tipo) && Boolean(campo.validacion);
  }

  private async verificarRechazoDeMuestrasInvalidas(
    localizador: Locator,
    campo: DefinicionCampoFormulario
  ) {
    const { validacion } = campo;
    if (!validacion) return;

    const muestras = new Set<string>(validacion.muestrasInvalidas ?? []);

    if (validacion.reglasNumericas) {
      if (validacion.reglasNumericas.permiteNegativos !== true) {
        muestras.add("-123");
      }
      if (validacion.reglasNumericas.permiteDecimales !== true) {
        muestras.add("123.45");
      }
    }

    for (const muestra of muestras) {
      const aceptado = await this.intentarEscribirValor(localizador, muestra);
      if (aceptado) {
        throw new Error(
          `El campo "${campo.nombre}" aceptó el valor inválido "${muestra}" y no debería permitirlo.`
        );
      }
    }
  }

  private async intentarEscribirValor(localizador: Locator, valor: string): Promise<boolean> {
    await localizador.scrollIntoViewIfNeeded();
    await localizador.fill("");
    await localizador.type(valor, { delay: 5 });
    const valorActual = await localizador.inputValue();
    const esValido = await localizador.evaluate((elemento) => {
      if (elemento instanceof HTMLInputElement || elemento instanceof HTMLTextAreaElement) {
        return elemento.validity?.valid ?? true;
      }
      return true;
    });
    return valorActual === valor && esValido;
  }
}
