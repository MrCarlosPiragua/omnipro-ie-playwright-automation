import { Given, Then, When } from "@cucumber/cucumber";
import { obtenerCampos } from "../config/forms-config";
import { MundoPersonalizado, RegistroEscenario } from "../support/world";

Given(
  "que selecciono el Tipo Form {string} y el ID form {string} para la url {string}",
  async function (
    this: MundoPersonalizado,
    tipoFormulario: string,
    idFormulario: string,
    url: string
  ) {
    tipoFormulario = tipoFormulario.trim();
    idFormulario = idFormulario.trim();
    url = url.trim();

    const registroPreparado: RegistroEscenario = {
      tipoFormulario,
      idFormulario,
      url,
    };

    this.registroActual = registroPreparado;
    await this.irA(url);
    await this.paginaFormulario?.aceptarCookiesSiAparece();

    const idVisible = await this.paginaFormulario?.contieneIdFormulario(idFormulario);
    if (!idVisible) {
      throw new Error(
        `El formulario cargado (${tipoFormulario}) no expone el identificador ${idFormulario} en sus atributos (por ejemplo, data-formid).`
      );
    }
  }
);

When(
  "completo los campos configurados para el formulario con idPrograma {string}",
  async function (this: MundoPersonalizado, idProgramaCampoOculto: string) {
    if (!this.registroActual) {
      throw new Error("No hay un registro activo para completar.");
    }

    const valorOculto = idProgramaCampoOculto?.trim();
    if (
      valorOculto &&
      valorOculto.toLowerCase() !== 'none' &&
      valorOculto.toLowerCase() !== 'null' &&
      this.paginaFormulario
    ) {
      await this.paginaFormulario.validarCampoOculto('ie_programmarketoid', valorOculto);
    }

    this.registroActual = {
      ...this.registroActual,
      idProgramaCampoOculto,
    };

    const campos = obtenerCampos(this.registroActual.tipoFormulario);

    if (!this.paginaFormulario) {
      throw new Error("La página de formulario no está disponible.");
    }

    await this.paginaFormulario.completarCamposSiExisten(campos);
  }
);

When("envío el formulario", async function (this: MundoPersonalizado) {
  await this.paginaFormulario?.enviarFormulario();
});

Then(
  "podre ver el Thank you page con country {string} y province {string}",
  async function (this: MundoPersonalizado, codigoPais: string, codigoProvincia: string) {
    if (!this.paginaFormulario) {
      throw new Error("La página de formulario no está disponible.");
    }

    await this.paginaFormulario.validarThankYouPage(codigoPais, codigoProvincia);
  }
);
