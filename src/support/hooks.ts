import { After, Before, Status, setDefaultTimeout } from '@cucumber/cucumber';
import { MundoPersonalizado } from './world';

setDefaultTimeout(90 * 1000);

const maxFailureScreenshots = 2000;
const allowFailureScreenshots = Number.isFinite(maxFailureScreenshots) && maxFailureScreenshots > 0;
let failureScreenshotsTaken = 0;

Before(async function (this: MundoPersonalizado) {
  await this.lanzarNavegador();
});

After(async function (this: MundoPersonalizado, escenario) {
  if (escenario.result?.status === Status.FAILED && this.pagina) {
    if (!allowFailureScreenshots) {
      this.log('Capturas de pantalla deshabilitadas (MAX_FAILURE_SCREENSHOTS <= 0).');
    } else if (failureScreenshotsTaken >= maxFailureScreenshots) {
      this.log(
        `Se alcanzó el límite de ${maxFailureScreenshots} capturas de pantalla para escenarios fallidos.`
      );
    } else {
      const buffer = await this.pagina.screenshot({
        fullPage: true,
        type: 'jpeg',
        quality: 60
      });
      await this.attach(buffer, 'image/jpeg');
      failureScreenshotsTaken += 1;
    }
  }

  await this.cerrarNavegador();
});
