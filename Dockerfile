FROM node:20-alpine

WORKDIR /app

COPY package*.json ./
RUN npm ci --only=production

COPY . .
COPY package.json package-lock.json ./
RUN npm ci --only=production

EXPOSE 4000

CMD ["node", "src/index.js"]
