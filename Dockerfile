FROM node:20-alpine

WORKDIR /app

COPY package*.json ./
RUN npm ci --only=production

COPY . .

# Datadog will pick these up automatically
ENV DD_SERVICE=your-service-name
ENV DD_ENV=production
ENV DD_LOGS_INJECTION=true
ENV DD_RUNTIME_METRICS_ENABLED=true
ENV DD_PROFILING_ENABLED=true

EXPOSE 3000
CMD ["node", "index.js"]
