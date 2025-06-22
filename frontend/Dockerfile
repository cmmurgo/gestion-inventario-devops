# Etapa de build
FROM node:18 as build

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .
RUN npm run build

# Etapa de producción con Nginx
FROM nginx:alpine

COPY --from=build /app/dist /usr/share/nginx/html

# Opcional: copiar configuración custom de Nginx (por si usás rutas con React Router)
# COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
