# Etapa de build
FROM node:18 AS build

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .
RUN npm run build

# Etapa de producción
FROM node:18-slim

WORKDIR /app

# Solo copiamos los archivos necesarios del build
COPY --from=build /app/dist ./dist
COPY --from=build /app/package*.json ./
RUN npm install --omit=dev

EXPOSE 4173

CMD ["npx", "vite", "preview", "--port", "4173", "--host"]
