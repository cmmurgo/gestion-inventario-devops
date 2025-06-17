# Etapa 1: Build
FROM node:18 AS build

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .
RUN npm run build

# Etapa 2: Servir con Nginx
FROM nginx:stable-alpine

# Copiar configuración por defecto de Vite para Nginx
COPY --from=build /app/dist /usr/share/nginx/html

# Quitar los archivos por defecto de Nginx
RUN rm /etc/nginx/conf.d/default.conf

# Agregar un archivo de configuración custom para que funcione con React Router DOM
COPY nginx.conf /etc/nginx/conf.d

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
