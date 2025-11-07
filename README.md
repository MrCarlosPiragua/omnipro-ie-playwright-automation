# Automatización IE Stage 3

Framework de pruebas end-to-end para los formularios Stage 3 utilizando Playwright, Cucumber y Page Object Model. Los datos de prueba se definen directamente en los archivos `.feature`.

## Tecnologías
- [Playwright](https://playwright.dev/) para la automatización del navegador.
- [Cucumber](https://cucumber.io/) + Gherkin en español para describir los escenarios.
- TypeScript + Page Object Model para mantener el código modular.

## Estructura principal
```
src/
  config/          # Variables de entorno y mapeo de campos por Tipo Form
  core/            # Utilidades de navegación (BrowserManager)
  pages/           # Page Objects reutilizables (PaginaBase, PaginaFormulario, etc.)
  steps/           # Definiciones de pasos en español
  support/         # World personalizado + hooks de Cucumber
tests/
  features/        # Escenarios Gherkin
```

## Configuración
1. Crea un archivo `.env` si deseas sobreescribir variables (por ejemplo `HEADLESS=false`).
2. Instala dependencias: `npm install`.
3. Descarga los navegadores de Playwright si hace falta: `npx playwright install`.

## Ejecución
- `npm test` ejecuta todos los escenarios.
- `npm test -- --tags "@stage3"` permite focalizar escenarios por tag.
- `npm test:headed` lanza las pruebas con interfaz visible.
- Los reportes HTML/JSON se guardan en `reports/cucumber-report.html` y `reports/cucumber-report.json` tras cada corrida.

> **Nota:** cada formulario puede tener campos distintos; el archivo `src/config/forms-config.ts` define los selectores a rellenar para cada `Tipo Form`. Amplía esta configuración a medida que se incorporen nuevos formularios.
