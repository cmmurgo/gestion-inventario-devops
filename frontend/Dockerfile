FROM node:18

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 3000  # Cambiar según puerto que use tu dev server (3000 es común)

CMD ["npm", "run", "dev"]
