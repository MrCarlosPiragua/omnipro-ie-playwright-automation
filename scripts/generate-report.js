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
