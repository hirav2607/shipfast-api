FROM node:20-alpine

WORKDIR /app

# ✅ copy only manifest first (for caching)
COPY package.json package-lock.json ./

# ✅ install ONLY production deps
RUN npm ci --omit=dev

# ✅ now copy source
COPY src ./src

EXPOSE 4000
CMD ["node", "src/index.js"]
