# Etapa de build
FROM node:18 AS build

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .
RUN npm run build

# Etapa de producción con Nginx
FROM nginx:stable-alpine

# Copiar archivos compilados al directorio público de Nginx
COPY --from=build /app/dist /usr/share/nginx/html

# Eliminar configuración por defecto de Nginx
RUN rm /etc/nginx/conf.d/default.conf

# Copiar configuración personalizada (para React Router DOM, etc.)
COPY nginx.conf /etc/nginx/conf.d

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]