const fs = require("fs");
const path = require("path");
const os = require("os");
const reporter = require("multiple-cucumber-html-reporter");
const cucumberHtmlReporter = require("cucumber-html-reporter");

const reportsDir = path.resolve(__dirname, "..", "reports");
const jsonReport = path.join(reportsDir, "cucumber-report.json");

if (!fs.existsSync(jsonReport)) {
  console.warn(`No JSON report found at ${jsonReport}. Skipping HTML report generation.`);
  process.exit(0);
}

const stats = fs.statSync(jsonReport);
if (stats.size === 0) {
  console.warn(
    `JSON report at ${jsonReport} is empty. Did the test run complete successfully? ` +
      "Skipping HTML report generation."
  );
  process.exit(0);
}

let parsed;
try {
  const raw = fs.readFileSync(jsonReport, "utf8");
  parsed = JSON.parse(raw);

  if (!Array.isArray(parsed) || parsed.length === 0) {
    console.warn(
      `JSON report at ${jsonReport} does not contain any feature results. ` +
        "Skipping HTML report generation."
    );
    process.exit(0);
  }
} catch (error) {
  console.error(`Failed to parse ${jsonReport}:`, error);
  process.exit(1);
}

const reportPath = path.join(reportsDir, "html");
const simpleReportPath = path.join(reportsDir, "cucumber-report.html");
const liteJsonReport = path.join(reportsDir, "cucumber-report-lite.json");

const metadata = {
  browser: {
    name: process.env.BROWSER ?? "chromium",
    version: process.env.BROWSER_VERSION ?? "Playwright managed",
  },
  device: process.env.CI?.toLowerCase() === "true" ? "CI runner" : "Local machine",
  platform: {
    name: process.platform,
    version: os.release(),
  },
};

const customData = {
  title: "Execution info",
  data: [
    { label: "Ambiente", value: process.env.TEST_ENV ?? "local" },
    { label: "Modo headless", value: process.env.HEADLESS === "true" ? "Si" : "No" },
    { label: "Generado en la fecha", value: new Date().toUTCString() },
  ],
};

const truncate = (text, maxLength) => {
  if (typeof text !== "string") {
    return text;
  }

  return text.length > maxLength ? `${text.slice(0, maxLength)}…` : text;
};

const sanitizeEmbeddables = (items = []) =>
  items.map((item) => {
    const sanitized = { ...item };
    if (sanitized.embeddings) {
      delete sanitized.embeddings;
    }
    if (sanitized.text) {
      sanitized.text = truncate(sanitized.text, 2000);
    }
    if (sanitized.match) {
      sanitized.match = sanitizeEmbeddables(Array.isArray(sanitized.match) ? sanitized.match : []);
    }
    if (sanitized.result?.error) {
      sanitized.result = {
        ...sanitized.result,
        error: truncate(sanitized.result.error, 4000),
      };
    }

    return sanitized;
  });

const sanitizeFeatures = (features = []) =>
  features.map((feature) => {
    const sanitizedFeature = { ...feature };
    if (sanitizedFeature.elements) {
      sanitizedFeature.elements = sanitizedFeature.elements.map((element) => {
        const sanitizedElement = { ...element };
        if (sanitizedElement.steps) {
          sanitizedElement.steps = sanitizeEmbeddables(sanitizedElement.steps);
        }
        if (sanitizedElement.before) {
          sanitizedElement.before = sanitizeEmbeddables(sanitizedElement.before);
        }
        if (sanitizedElement.after) {
          sanitizedElement.after = sanitizeEmbeddables(sanitizedElement.after);
        }

        return sanitizedElement;
      });
    }

    return sanitizedFeature;
  });

try {
  const sanitized = sanitizeFeatures(parsed);
  fs.writeFileSync(liteJsonReport, JSON.stringify(sanitized, null, 2), "utf8");
} catch (error) {
  console.warn("Failed to create lite JSON report. Falling back to original JSON.", error);
}

reporter.generate({
  jsonDir: reportsDir,
  reportPath,
  reportName: "Omnipro IE Reporte de Automatización",
  pageTitle: "Omnipro IE Reporte de Automatización",
  displayDuration: true,
  hideMetadata: false,
  metadata,
  customData,
});

console.log(`El reporte HTML se ha generado en ${path.join(reportPath, "index.html")}`);

const jsonForSimpleReport = fs.existsSync(liteJsonReport) ? liteJsonReport : jsonReport;

cucumberHtmlReporter.generate({
  theme: "bootstrap",
  jsonFile: jsonForSimpleReport,
  output: simpleReportPath,
  reportSuiteAsScenarios: true,
  scenarioTimestamp: true,
  storeScreenshots: false,
  launchReport: false,
  metadata: {
    "Browser": `${metadata.browser.name} (${metadata.browser.version})`,
    "Device": metadata.device,
    "Platform": `${metadata.platform.name} ${metadata.platform.version}`,
    "Headless": customData.data.find((item) => item.label === "Modo headless")?.value ?? "Desconocido",
    "Ambiente": customData.data.find((item) => item.label === "Ambiente")?.value ?? "local",
  },
  brandTitle: "Omnipro IE Resultado individual",
});

console.log(`Reporte individual generado en ${simpleReportPath}`);
