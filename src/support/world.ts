import { IWorldOptions, setWorldConstructor, World } from '@cucumber/cucumber';
import { Browser, BrowserContext, Page } from 'playwright';
import { GestorNavegador } from '../core/browser-manager';
import { PaginaFormulario } from '../pages/form.page';

export interface RegistroEscenario {
  tipoFormulario: string;
  idFormulario?: string;
  idProgramaCampoOculto?: string;
  url?: string;
}

export interface MundoPersonalizado extends World {
  navegador?: Browser;
  contexto?: BrowserContext;
  pagina?: Page;
  paginaFormulario?: PaginaFormulario;
  registroActual?: RegistroEscenario;
  lanzarNavegador(): Promise<void>;
  cerrarNavegador(): Promise<void>;
  irA(url: string): Promise<void>;
}

class MundoIE extends World implements MundoPersonalizado {
  navegador?: Browser;
  contexto?: BrowserContext;
  pagina?: Page;
  paginaFormulario?: PaginaFormulario;
  registroActual?: RegistroEscenario;

  constructor(opciones: IWorldOptions) {
    super(opciones);
  }

  async lanzarNavegador(): Promise<void> {
    const paquete = await GestorNavegador.lanzar();
    this.navegador = paquete.navegador;
    this.contexto = paquete.contexto;
    this.pagina = paquete.pagina;
    this.paginaFormulario = new PaginaFormulario(paquete.pagina);
  }

  async cerrarNavegador(): Promise<void> {
    await this.contexto?.close();
    await this.navegador?.close();
    this.navegador = undefined;
    this.contexto = undefined;
    this.pagina = undefined;
    this.paginaFormulario = undefined;
  }

  async irA(url: string): Promise<void> {
    if (!this.pagina) {
      throw new Error('La página de Playwright no está inicializada.');
    }
    await this.pagina.goto(url, { waitUntil: 'networkidle' });
  }
}

setWorldConstructor(MundoIE);
