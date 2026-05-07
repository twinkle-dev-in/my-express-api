// tracer.js
const tracer = require('dd-trace').init({
  service: 'my-express-api',
  env: process.env.NODE_ENV || 'production',
  version: process.env.RENDER_GIT_COMMIT?.substring(0, 7) || '1.0.0',
  logInjection: true,
  runtimeMetrics: true,
  profiling: true,
  tags: {
    'render.service.name': process.env.RENDER_SERVICE_NAME,
    'render.region': process.env.RENDER_REGION,
  },
});

module.exports = tracer;