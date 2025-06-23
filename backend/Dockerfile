# Etapa de build
FROM node:18 AS build

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

# Etapa de producción
FROM node:18-slim

WORKDIR /app

COPY --from=build /app ./
RUN npm install --omit=dev

EXPOSE 3000

CMD ["npm", "start"]
