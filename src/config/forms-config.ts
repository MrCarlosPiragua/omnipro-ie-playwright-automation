import { DefinicionCampoFormulario } from "../pages/form.page";

export const configuracionFormularios: Record<string, DefinicionCampoFormulario[]> = {
  "EN - Embed - Tipo 3 - Bachelor - Program select": [
    {
      nombre: "Nombres",
      selector: 'input[name="FirstName"]',
      tipo: "text",
      valor: "Ñoño",
      validacion: {
        muestrasInvalidas: ["Omni123", "Omni213!@#", "@ / \\ ? ! # % $ * + ' : ;  () [] {}"],
      },
      placeholderEsperado: "First Name *",
    },
    {
      nombre: "Apellidos",
      selector: 'input[name="MiddleName"]',
      tipo: "text",
      valor: "Pérez",
      validacion: {
        muestrasInvalidas: ["Omni123", "Omni213!@#", "@ / \\ ? ! # % $ * + ' : ;  () [] {}"],
      },
      placeholderEsperado: "Last Name *",
    },
    {
      nombre: "Email",
      selector: 'input[name="Email"]',
      tipo: "email",
      placeholderEsperado: "Email *",
    },
    {
      nombre: "Pais Colombia",
      selector: 'select[name="ie_countryid"]',
      tipo: "select",
      valor: "Colombia",
    },
    {
      nombre: "Pais Mexico",
      selector: 'select[name="ie_countryid"]',
      tipo: "select",
      valor: "Mexico",
    },
    {
      nombre: "Genero",
      selector: 'select[name="ie_genderidentity"]',
      tipo: "select",
      placeholderEsperado: "Gender Identity *",
    },
    {
      nombre: "Provincia/Region",
      selector: 'select[name="ie_provinceregionid"]',
      tipo: "select",
      valor: "Aguascalientes",
    },
    {
      nombre: "Tu eres",
      selector: 'select[name="mktoStakeholder"]',
      tipo: "select",
      valor: "Student",
      placeholderEsperado: "You are a *",
    },
    {
      nombre: "Año preferido de inicio",
      selector: 'select[name="ie_estimateddateofadmissiontoie"]',
      tipo: "select",
      placeholderEsperado: "Preferred start year",
    },
    {
      nombre: "Codigo cedular del pais",
      selector: 'select[name="phoneCountryCode"]',
      tipo: "select",
      valor: "Colombia (+57)",
      placeholderEsperado: "Phone Country Code",
    },
    {
      nombre: "Codigo cedular del pais",
      selector: 'select[name="Phone"]',
      tipo: "text",
      valor: "3005005050",
      placeholderEsperado: "Phone Number",
    },
    {
      nombre: "Autorización de IE",
      selector: 'input[name="mkto_gdprc22"]',
      tipo: "checkbox",
    },
    {
      nombre: "En que colegio estudiaste?",
      selector: 'input[name="ie_highschool"]',
      tipo: "text",
      valor: "Colegio Nacional",
      placeholderEsperado: "In which school did you study?: *",
    },
  ],
  "ES - Embed - Tipo 3 - Bachelor - Program select": [
    {
      nombre: "Nombres",
      selector: 'input[name="FirstName"]',
      tipo: "text",
      validacion: {
        muestrasInvalidas: ["Omni123", "Omni213!@#"],
      },
    },
    {
      nombre: "Apellidos",
      selector: 'input[name="MiddleName"]',
      tipo: "text",
      validacion: {
        muestrasInvalidas: ["Omni134", "Omni@."],
      },
    },
    {
      nombre: "Email",
      selector: 'input[name="Email"]',
      tipo: "email",
      validacion: {
        muestrasInvalidas: ["correo-invamiloplido", "test@"],
      },
    },
    {
      nombre: "Pais Colombia",
      selector: 'select[name="ie_countryid"]',
      tipo: "select",
    },
    {
      nombre: "Pais Mexico",
      selector: 'select[name="ie_countryid"]',
      tipo: "select",
    },
    {
      nombre: "Genero",
      selector: 'select[name="ie_genderidentity"]',
      tipo: "select",
    },
    {
      nombre: "Provincia/Region",
      selector: 'select[name="ie_provinceregionid"]',
      tipo: "select",
    },
    {
      nombre: "Tu eres",
      selector: 'select[name="ie_provinceregionid"]',
      tipo: "select",
    },
  ],
  "EN - Embed - Tipo 3 - Master - Program select optional Phone number": [
    {
      nombre: "Nombres",
      selector: 'input[name="FirstName"]',
      tipo: "text",
      validacion: {
        muestrasInvalidas: ["Omni123", "Omni213!@#"],
      },
    },
    {
      nombre: "Apellidos",
      selector: 'input[name="MiddleName"]',
      tipo: "text",
      validacion: {
        muestrasInvalidas: ["Omni134", "Omni@."],
      },
    },
    {
      nombre: "Email",
      selector: 'input[name="Email"]',
      tipo: "email",
      validacion: {
        muestrasInvalidas: ["correo-invamiloplido", "test@"],
      },
    },
    {
      nombre: "Pais Colombia",
      selector: 'select[name="ie_countryid"]',
      tipo: "select",
    },
    {
      nombre: "Pais Mexico",
      selector: 'select[name="ie_countryid"]',
      tipo: "select",
    },
    {
      nombre: "Genero",
      selector: 'select[name="ie_genderidentity"]',
      tipo: "select",
    },
    {
      nombre: "Provincia/Region",
      selector: 'select[name="ie_provinceregionid"]',
      tipo: "select",
    },
    {
      nombre: "Tu eres",
      selector: 'select[name="ie_provinceregionid"]',
      tipo: "select",
    },
  ],
  "EN - Embed - Tipo 3 - Master - Program select required Phone number": [
    {
      nombre: "Nombres",
      selector: 'input[name="FirstName"]',
      tipo: "text",
      validacion: {
        muestrasInvalidas: ["Omni123", "Omni213!@#"],
      },
    },
    {
      nombre: "Apellidos",
      selector: 'input[name="MiddleName"]',
      tipo: "text",
      validacion: {
        muestrasInvalidas: ["Omni134", "Omni@."],
      },
    },
    {
      nombre: "Email",
      selector: 'input[name="Email"]',
      tipo: "email",
      validacion: {
        muestrasInvalidas: ["correo-invamiloplido", "test@"],
      },
    },
    {
      nombre: "Pais Colombia",
      selector: 'select[name="ie_countryid"]',
      tipo: "select",
    },
    {
      nombre: "Pais Mexico",
      selector: 'select[name="ie_countryid"]',
      tipo: "select",
    },
    {
      nombre: "Genero",
      selector: 'select[name="ie_genderidentity"]',
      tipo: "select",
    },
    {
      nombre: "Provincia/Region",
      selector: 'select[name="ie_provinceregionid"]',
      tipo: "select",
    },
    {
      nombre: "Tu eres",
      selector: 'select[name="ie_provinceregionid"]',
      tipo: "select",
    },
  ],
  "EN - Embed - Tipo 3 - Master - Program select - Whatsapp": [
    {
      nombre: "Nombres",
      selector: 'input[name="FirstName"]',
      tipo: "text",
      validacion: {
        muestrasInvalidas: ["Omni123", "Omni213!@#"],
      },
    },
    {
      nombre: "Apellidos",
      selector: 'input[name="MiddleName"]',
      tipo: "text",
      validacion: {
        muestrasInvalidas: ["Omni134", "Omni@."],
      },
    },
    {
      nombre: "Email",
      selector: 'input[name="Email"]',
      tipo: "email",
      validacion: {
        muestrasInvalidas: ["correo-invamiloplido", "test@"],
      },
    },
    {
      nombre: "Pais Colombia",
      selector: 'select[name="ie_countryid"]',
      tipo: "select",
    },
    {
      nombre: "Pais Mexico",
      selector: 'select[name="ie_countryid"]',
      tipo: "select",
    },
    {
      nombre: "Genero",
      selector: 'select[name="ie_genderidentity"]',
      tipo: "select",
    },
    {
      nombre: "Provincia/Region",
      selector: 'select[name="ie_provinceregionid"]',
      tipo: "select",
    },
    {
      nombre: "Tu eres",
      selector: 'select[name="ie_provinceregionid"]',
      tipo: "select",
    },
  ],
  "ES - Embed - Tipo 3 - Master - Program select with optional Phone number": [
    {
      nombre: "Nombres",
      selector: 'input[name="FirstName"]',
      tipo: "text",
      validacion: {
        muestrasInvalidas: ["Omni123", "Omni213!@#"],
      },
    },
    {
      nombre: "Apellidos",
      selector: 'input[name="MiddleName"]',
      tipo: "text",
      validacion: {
        muestrasInvalidas: ["Omni134", "Omni@."],
      },
    },
    {
      nombre: "Email",
      selector: 'input[name="Email"]',
      tipo: "email",
      validacion: {
        muestrasInvalidas: ["correo-invamiloplido", "test@"],
      },
    },
    {
      nombre: "Pais Colombia",
      selector: 'select[name="ie_countryid"]',
      tipo: "select",
    },
    {
      nombre: "Pais Mexico",
      selector: 'select[name="ie_countryid"]',
      tipo: "select",
    },
    {
      nombre: "Genero",
      selector: 'select[name="ie_genderidentity"]',
      tipo: "select",
    },
    {
      nombre: "Provincia/Region",
      selector: 'select[name="ie_provinceregionid"]',
      tipo: "select",
    },
    {
      nombre: "Tu eres",
      selector: 'select[name="ie_provinceregionid"]',
      tipo: "select",
    },
  ],
  "ES - Embed - Tipo 3 - Master - Program select with required Phone number": [
    {
      nombre: "Nombres",
      selector: 'input[name="FirstName"]',
      tipo: "text",
      validacion: {
        muestrasInvalidas: ["Omni123", "Omni213!@#"],
      },
    },
    {
      nombre: "Apellidos",
      selector: 'input[name="MiddleName"]',
      tipo: "text",
      validacion: {
        muestrasInvalidas: ["Omni134", "Omni@."],
      },
    },
    {
      nombre: "Email",
      selector: 'input[name="Email"]',
      tipo: "email",
      validacion: {
        muestrasInvalidas: ["correo-invamiloplido", "test@"],
      },
    },
    {
      nombre: "Pais Colombia",
      selector: 'select[name="ie_countryid"]',
      tipo: "select",
    },
    {
      nombre: "Pais Mexico",
      selector: 'select[name="ie_countryid"]',
      tipo: "select",
    },
    {
      nombre: "Genero",
      selector: 'select[name="ie_genderidentity"]',
      tipo: "select",
    },
    {
      nombre: "Provincia/Region",
      selector: 'select[name="ie_provinceregionid"]',
      tipo: "select",
    },
    {
      nombre: "Tu eres",
      selector: 'select[name="ie_provinceregionid"]',
      tipo: "select",
    },
  ],
  "ES - Embed - Tipo 3 - Master - Program select - BAC": [
    {
      nombre: "Nombres",
      selector: 'input[name="FirstName"]',
      tipo: "text",
      validacion: {
        muestrasInvalidas: ["Omni123", "Omni213!@#"],
      },
    },
    {
      nombre: "Apellidos",
      selector: 'input[name="MiddleName"]',
      tipo: "text",
      validacion: {
        muestrasInvalidas: ["Omni134", "Omni@."],
      },
    },
    {
      nombre: "Email",
      selector: 'input[name="Email"]',
      tipo: "email",
      validacion: {
        muestrasInvalidas: ["correo-invamiloplido", "test@"],
      },
    },
    {
      nombre: "Pais Colombia",
      selector: 'select[name="ie_countryid"]',
      tipo: "select",
    },
    {
      nombre: "Pais Mexico",
      selector: 'select[name="ie_countryid"]',
      tipo: "select",
    },
    {
      nombre: "Genero",
      selector: 'select[name="ie_genderidentity"]',
      tipo: "select",
    },
    {
      nombre: "Provincia/Region",
      selector: 'select[name="ie_provinceregionid"]',
      tipo: "select",
    },
    {
      nombre: "Tu eres",
      selector: 'select[name="ie_provinceregionid"]',
      tipo: "select",
    },
  ],
  "ES - Embed - Tipo 3 - Master - Program select - Whatsapp": [
    {
      nombre: "Nombres",
      selector: 'input[name="FirstName"]',
      tipo: "text",
      validacion: {
        muestrasInvalidas: ["Omni123", "Omni213!@#"],
      },
    },
    {
      nombre: "Apellidos",
      selector: 'input[name="MiddleName"]',
      tipo: "text",
      validacion: {
        muestrasInvalidas: ["Omni134", "Omni@."],
      },
    },
    {
      nombre: "Email",
      selector: 'input[name="Email"]',
      tipo: "email",
      validacion: {
        muestrasInvalidas: ["correo-invamiloplido", "test@"],
      },
    },
    {
      nombre: "Pais Colombia",
      selector: 'select[name="ie_countryid"]',
      tipo: "select",
    },
    {
      nombre: "Pais Mexico",
      selector: 'select[name="ie_countryid"]',
      tipo: "select",
    },
    {
      nombre: "Genero",
      selector: 'select[name="ie_genderidentity"]',
      tipo: "select",
    },
    {
      nombre: "Provincia/Region",
      selector: 'select[name="ie_provinceregionid"]',
      tipo: "select",
    },
    {
      nombre: "Tu eres",
      selector: 'select[name="ie_provinceregionid"]',
      tipo: "select",
    },
  ],
  "EN - Embed - Tipo 3 - Summer PRE - UNI - Program select with optional Phone number": [
    {
      nombre: "Nombres",
      selector: 'input[name="FirstName"]',
      tipo: "text",
      validacion: {
        muestrasInvalidas: ["Omni123", "Omni213!@#"],
      },
    },
    {
      nombre: "Apellidos",
      selector: 'input[name="MiddleName"]',
      tipo: "text",
      validacion: {
        muestrasInvalidas: ["Omni134", "Omni@."],
      },
    },
    {
      nombre: "Email",
      selector: 'input[name="Email"]',
      tipo: "email",
      validacion: {
        muestrasInvalidas: ["correo-invamiloplido", "test@"],
      },
    },
    {
      nombre: "Pais Colombia",
      selector: 'select[name="ie_countryid"]',
      tipo: "select",
    },
    {
      nombre: "Pais Mexico",
      selector: 'select[name="ie_countryid"]',
      tipo: "select",
    },
    {
      nombre: "Genero",
      selector: 'select[name="ie_genderidentity"]',
      tipo: "select",
    },
    {
      nombre: "Provincia/Region",
      selector: 'select[name="ie_provinceregionid"]',
      tipo: "select",
    },
    {
      nombre: "Tu eres",
      selector: 'select[name="ie_provinceregionid"]',
      tipo: "select",
    },
  ],
  "EN - Embed - Tipo 3 - Summer UNI - Program select": [
    {
      nombre: "Nombres",
      selector: 'input[name="FirstName"]',
      tipo: "text",
      validacion: {
        muestrasInvalidas: ["Omni123", "Omni213!@#"],
      },
    },
    {
      nombre: "Apellidos",
      selector: 'input[name="MiddleName"]',
      tipo: "text",
      validacion: {
        muestrasInvalidas: ["Omni134", "Omni@."],
      },
    },
    {
      nombre: "Email",
      selector: 'input[name="Email"]',
      tipo: "email",
      validacion: {
        muestrasInvalidas: ["correo-invamiloplido", "test@"],
      },
    },
    {
      nombre: "Pais Colombia",
      selector: 'select[name="ie_countryid"]',
      tipo: "select",
    },
    {
      nombre: "Pais Mexico",
      selector: 'select[name="ie_countryid"]',
      tipo: "select",
    },
    {
      nombre: "Genero",
      selector: 'select[name="ie_genderidentity"]',
      tipo: "select",
    },
    {
      nombre: "Provincia/Region",
      selector: 'select[name="ie_provinceregionid"]',
      tipo: "select",
    },
    {
      nombre: "Tu eres",
      selector: 'select[name="ie_provinceregionid"]',
      tipo: "select",
    },
  ],
  "EN - Embed - Tipo 3 - Summer UNI - Especialización select": [
    {
      nombre: "Nombres",
      selector: 'input[name="FirstName"]',
      tipo: "text",
      validacion: {
        muestrasInvalidas: ["Omni123@.", "OmnniñPeréz"],
      },
    },
    {
      nombre: "Apellidos",
      selector: 'input[name="MiddleName"]',
      tipo: "text",
      validacion: {
        muestrasInvalidas: ["Omni134", "Omni@."],
      },
    },
    {
      nombre: "Email",
      selector: 'input[name="Email"]',
      tipo: "email",
      validacion: {
        muestrasInvalidas: ["correo-invamiloplido", "test@"],
      },
    },
    {
      nombre: "Pais Colombia",
      selector: 'select[name="ie_countryid"]',
      tipo: "select",
    },
    {
      nombre: "Pais Mexico",
      selector: 'select[name="ie_countryid"]',
      tipo: "select",
    },
    {
      nombre: "Genero",
      selector: 'select[name="ie_genderidentity"]',
      tipo: "select",
    },
    {
      nombre: "Provincia/Region",
      selector: 'select[name="ie_provinceregionid"]',
      tipo: "select",
    },
    {
      nombre: "Tu eres",
      selector: 'select[name="ie_provinceregionid"]',
      tipo: "select",
    },
  ],
  "EN - Embed - Tipo 3 - Summer UNI - Program select - BAC": [
    {
      nombre: "Nombres",
      selector: 'input[name="FirstName"]',
      tipo: "text",
      validacion: {
        muestrasInvalidas: ["Omni123P", "Omni!@#"],
      },
    },
    {
      nombre: "Apellidos",
      selector: 'input[name="MiddleName"]',
      tipo: "text",
      validacion: {
        muestrasInvalidas: ["Omni134", "Omni@."],
      },
    },
    {
      nombre: "Email",
      selector: 'input[name="Email"]',
      tipo: "email",
      validacion: {
        muestrasInvalidas: ["correo-invamiloplido", "test@"],
      },
    },
    {
      nombre: "Pais Colombia",
      selector: 'select[name="ie_countryid"]',
      tipo: "select",
    },
    {
      nombre: "Pais Mexico",
      selector: 'select[name="ie_countryid"]',
      tipo: "select",
    },
    {
      nombre: "Genero",
      selector: 'select[name="ie_genderidentity"]',
      tipo: "select",
    },
    {
      nombre: "Provincia/Region",
      selector: 'select[name="ie_provinceregionid"]',
      tipo: "select",
    },
    {
      nombre: "Tu eres",
      selector: 'select[name="ie_provinceregionid"]',
      tipo: "select",
    },
  ],
  "EN - Embed - Tipo 3 - Summer UNI - Program select - Whatsapp": [
    {
      nombre: "Nombres",
      selector: 'input[name="FirstName"]',
      tipo: "text",
      validacion: {
        muestrasInvalidas: ["Omni123", "Omni213!@#"],
      },
    },
    {
      nombre: "Apellidos",
      selector: 'input[name="MiddleName"]',
      tipo: "text",
      validacion: {
        muestrasInvalidas: ["Omni134", "Omni@."],
      },
    },
    {
      nombre: "Email",
      selector: 'input[name="Email"]',
      tipo: "email",
      validacion: {
        muestrasInvalidas: ["correo-invamiloplido", "test@"],
      },
    },
    {
      nombre: "Pais Colombia",
      selector: 'select[name="ie_countryid"]',
      tipo: "select",
    },
    {
      nombre: "Pais Mexico",
      selector: 'select[name="ie_countryid"]',
      tipo: "select",
    },
    {
      nombre: "Genero",
      selector: 'select[name="ie_genderidentity"]',
      tipo: "select",
    },
    {
      nombre: "Provincia/Region",
      selector: 'select[name="ie_provinceregionid"]',
      tipo: "select",
    },
    {
      nombre: "Tu eres",
      selector: 'select[name="ie_provinceregionid"]',
      tipo: "select",
    },
  ],
  "EN - Embed - Tipo 3 - Summer PRE- UNI - Program select optional Phone number - BAC": [
    {
      nombre: "Nombres",
      selector: 'input[name="FirstName"]',
      tipo: "text",
      validacion: {
        muestrasInvalidas: ["Omni123", "Omni213!@#"],
      },
    },
    {
      nombre: "Apellidos",
      selector: 'input[name="MiddleName"]',
      tipo: "text",
      validacion: {
        muestrasInvalidas: ["Omni134", "Omni@."],
      },
    },
    {
      nombre: "Email",
      selector: 'input[name="Email"]',
      tipo: "email",
      validacion: {
        muestrasInvalidas: ["correo-invamiloplido", "test@"],
      },
    },
    {
      nombre: "Pais Colombia",
      selector: 'select[name="ie_countryid"]',
      tipo: "select",
    },
    {
      nombre: "Pais Mexico",
      selector: 'select[name="ie_countryid"]',
      tipo: "select",
    },
    {
      nombre: "Genero",
      selector: 'select[name="ie_genderidentity"]',
      tipo: "select",
    },
    {
      nombre: "Provincia/Region",
      selector: 'select[name="ie_provinceregionid"]',
      tipo: "select",
    },
    {
      nombre: "Tu eres",
      selector: 'select[name="ie_provinceregionid"]',
      tipo: "select",
    },
  ],
  "EN - Embed - Tipo 3 - Summer PRE- UNI - Program select optional Phone number - Whatsapp": [
    {
      nombre: "Nombres",
      selector: 'input[name="FirstName"]',
      tipo: "text",
      validacion: {
        muestrasInvalidas: ["Omni123", "Omni213!@#"],
      },
    },
    {
      nombre: "Apellidos",
      selector: 'input[name="MiddleName"]',
      tipo: "text",
      validacion: {
        muestrasInvalidas: ["Omni134", "Omni@."],
      },
    },
    {
      nombre: "Email",
      selector: 'input[name="Email"]',
      tipo: "email",
      validacion: {
        muestrasInvalidas: ["correo-invamiloplido", "test@"],
      },
    },
    {
      nombre: "Pais Colombia",
      selector: 'select[name="ie_countryid"]',
      tipo: "select",
    },
    {
      nombre: "Pais Mexico",
      selector: 'select[name="ie_countryid"]',
      tipo: "select",
    },
    {
      nombre: "Genero",
      selector: 'select[name="ie_genderidentity"]',
      tipo: "select",
    },
    {
      nombre: "Provincia/Region",
      selector: 'select[name="ie_provinceregionid"]',
      tipo: "select",
    },
    {
      nombre: "Tu eres",
      selector: 'select[name="ie_provinceregionid"]',
      tipo: "select",
    },
  ],
};

export const obtenerCampos = (tipoFormulario: string): DefinicionCampoFormulario[] => {
  return configuracionFormularios[tipoFormulario];
};
