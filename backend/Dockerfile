# Imagen base de Node
FROM node:18

# Crear y usar el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar los archivos de dependencias
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar el resto del código
COPY . .

# Exponer el puerto de la app
EXPOSE 3001

# Comando para ejecutar el servidor
CMD ["npm", "start"]