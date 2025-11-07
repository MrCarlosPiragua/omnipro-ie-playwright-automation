import { Page } from 'playwright';

export abstract class PaginaBase {
  protected constructor(protected readonly pagina: Page) {}

  protected async esperarRedInactiva() {
    await this.pagina.waitForLoadState('networkidle');
  }
}
