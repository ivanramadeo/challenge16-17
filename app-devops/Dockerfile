#Establece la imagen base para el contenedor.
FROM node:alpine
#Establece el directorio de trabajo dentro de la imagen del contenedor. 
WORKDIR /app
#Copia los archivos package.json y package-lock.json
COPY package*.json ./
#Ejecuta el comando npm install en el directorio de trabajo actual del contenedor. 
RUN npm install
#Copia todos los archivos y directorios de tu directorio local (excepto los definidos en .dockerignore)
COPY . .
#Informa a Docker que el contenedor escuchará en el puerto 3000 en tiempo de ejecución
EXPOSE 3000
#es la instrucción que se ejecutará por defecto cuando el contenedor se inicie. 
#Indica que ejecute node server.js, 
# lo iniciará la aplicación Node.js definida en server.js.
CMD ["node", "server.js"]
