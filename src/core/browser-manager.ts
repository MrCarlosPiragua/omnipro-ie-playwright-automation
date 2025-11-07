import { Browser, BrowserContext, Page, chromium, firefox, webkit } from 'playwright';
import { entorno } from '../config/env';

export interface PaqueteNavegador {
  navegador: Browser;
  contexto: BrowserContext;
  pagina: Page;
}

export class GestorNavegador {
  static async lanzar(): Promise<PaqueteNavegador> {
    const lanzador = this.obtenerLanzador();
    const navegador = await lanzador.launch({ headless: entorno.modoHeadless });
    const contexto = await navegador.newContext();
    const pagina = await contexto.newPage();

    return { navegador, contexto, pagina };
  }

  private static obtenerLanzador() {
    switch (entorno.navegador) {
      case 'firefox':
        return firefox;
      case 'webkit':
        return webkit;
      case 'chromium':
      default:
        return chromium;
    }
  }
}
