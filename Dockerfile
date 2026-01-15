FROM node:20-alpine

WORKDIR /app

# ✅ copy lockfile too (mandatory)
COPY package.json package-lock.json ./

# ✅ install production only
RUN npm ci --omit=dev

# ✅ now copy source
COPY . .

EXPOSE 4000
CMD ["node", "src/index.js"]
