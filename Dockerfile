FROM node:20-alpine

WORKDIR /app

COPY package*.json ./
RUN npm ci --only=production

COPY . .

ENV DD_SERVICE=my-express-api
ENV DD_ENV=production
ENV DD_LOGS_INJECTION=true
ENV DD_RUNTIME_METRICS_ENABLED=true
ENV DD_PROFILING_ENABLED=true
ENV DD_SITE=us5.datadoghq.com

EXPOSE 3000
CMD ["node", "index.js"]