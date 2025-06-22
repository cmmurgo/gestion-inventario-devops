FROM node:18

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

# Cambiar según puerto que use tu dev server (3000 es común)
EXPOSE 3000

CMD ["npm", "run", "dev"]
