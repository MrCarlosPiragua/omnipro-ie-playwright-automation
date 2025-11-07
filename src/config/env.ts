import dotenv from 'dotenv';

dotenv.config();

export const entorno = {
  modoHeadless: (process.env.HEADLESS ?? 'true').toLowerCase() !== 'false',
  navegador: (process.env.BROWSER ?? 'chromium') as 'chromium' | 'firefox' | 'webkit'
};
