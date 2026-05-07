// tracer.js
const tracer = require('dd-trace').init({
  service: 'your-service-name',
  env: process.env.NODE_ENV || 'production',
  version: process.env.RENDER_GIT_COMMIT || '1.0.0',
  logInjection: true,
  runtimeMetrics: true,
  profiling: true,
});

module.exports = tracer;
