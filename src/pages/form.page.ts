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
  obligatorio?: boolean;
}

export class PaginaFormulario extends PaginaBase {
  private readonly tiposConPlaceholder: TipoCampo[] = ["text", "textarea", "email", "tel"];
  private readonly tiposValidanObligatorio: TipoCampo[] = ["text", "textarea", "email", "tel", "select"];

  constructor(pagina: Page) {
    super(pagina);
  }

  async completarCamposSiExisten(campos: DefinicionCampoFormulario[]): Promise<void> {
    for (const campo of campos) {
      await this.pagina.waitForTimeout(5000);
      const localizador = this.pagina.locator(campo.selector);
      if ((await localizador.count()) === 0) {
        console.warn(
          `El campo "${campo.nombre}" no se encontró con el selector ${campo.selector}. Se omite en esta página.`
        );
        continue;
      }

      await this.validarPlaceholderSiAplica(localizador, campo);
      await this.verificarErrorObligatorioSiAplica(localizador, campo);

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
      this.pagina.getByRole("button", { name: /accept/i })
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
      '#onetrust-accept-btn-handler',
      'button[id*="accept"]',
      'button[id*="Aceptar"]',
      'button[data-testid*="accept"]',
      'button:has-text("Aceptar")',
      '[aria-label*="Aceptar"]'
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
        .frameLocator('#onetrust-consent-sdk')
        .locator('button#onetrust-accept-btn-handler'),
      this.pagina
        .frameLocator('iframe[title*="consent"]')
        .locator('button:has-text("Accept")'),
      this.pagina
        .frameLocator('iframe[id*="onetrust"]')
        .locator('button:has-text("Aceptar")')
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

  async enviarSiEsPosible(): Promise<void> {
    const botones = this.pagina.locator('button[type="submit"], input[type="submit"]');
    if (await botones.count()) {
      await botones.first().click();
      await this.esperarRedInactiva();
    }
  }

  async validarCampoOculto(nombreCampo: string, valorEsperado: string): Promise<void> {
    const campo = this.pagina.locator(`input[name="${nombreCampo}"]`).first();
    if (!(await campo.count())) {
      throw new Error(`No se encontró el campo oculto ${nombreCampo} en el formulario.`);
    }

    const tipo = (await campo.getAttribute('type')) ?? '';
    if (tipo.toLowerCase() !== 'hidden') {
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

  private debeVerificarPlaceholder(campo: DefinicionCampoFormulario): boolean {
    return this.tiposConPlaceholder.includes(campo.tipo);
  }

  private debeVerificarObligatorio(campo: DefinicionCampoFormulario): boolean {
    return this.tiposValidanObligatorio.includes(campo.tipo);
  }

  private async validarPlaceholderSiAplica(
    localizador: Locator,
    campo: DefinicionCampoFormulario
  ): Promise<void> {
    if (!this.debeVerificarPlaceholder(campo)) {
      return;
    }

    const placeholder = (await localizador.getAttribute("placeholder"))?.trim() ?? "";
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

  private async verificarErrorObligatorioSiAplica(
    localizador: Locator,
    campo: DefinicionCampoFormulario
  ): Promise<void> {
    if (!this.debeVerificarObligatorio(campo)) {
      return;
    }

    const esObligatorio = await this.esCampoObligatorio(localizador, campo);
    if (!esObligatorio) {
      return;
    }

    await localizador.scrollIntoViewIfNeeded();

    await localizador.click();

    await this.pagina.keyboard.press("Escape");

    const errorLocator = this.obtenerLocatorErrorObligatorio(localizador);
    const mostroError = await this.esErrorVisible(errorLocator);
    if (!mostroError) {
      throw new Error(
        `El campo obligatorio "${campo.nombre}" no mostró el mensaje con la clase mktoErrorMsg al quedar vacío.`
      );
    }
  }

  private async esCampoObligatorio(
    localizador: Locator,
    campo: DefinicionCampoFormulario
  ): Promise<boolean> {
    if (typeof campo.obligatorio === "boolean") {
      return campo.obligatorio;
    }
    return false;
  }

  private obtenerLocatorErrorObligatorio(localizador: Locator): Locator {
    return localizador.locator(
      'xpath=ancestor::*[contains(@class,"mktoFormRow") or contains(@class,"mktoFieldWrap") or contains(@class,"mktoField")]//div[contains(@class,"mktoErrorMsg")]'
    );
  }

  private async esErrorVisible(errorLocator: Locator): Promise<boolean> {
    try {
      await errorLocator.first().waitFor({ state: "visible", timeout: 1500 });
      return true;
    } catch {
      return false;
    }
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
