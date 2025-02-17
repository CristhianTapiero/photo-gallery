# Usa una imagen base de Node.js para compilar la aplicación
FROM node:18 AS build-stage

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia los archivos de la aplicación
COPY package*.json ./

# Instala las dependencias
RUN npm install -g @ionic/cli && npm install

# Copia el resto del código
COPY . .

# Construye la aplicación para producción
RUN ionic build --prod

# Usa un servidor Nginx para servir la aplicación
FROM nginx:alpine AS production-stage

# Copia los archivos generados en la fase de construcción
COPY --from=build-stage /app/www /usr/share/nginx/html

# Expone el puerto 80
EXPOSE 80

# Comando por defecto
CMD ["nginx", "-g", "daemon off;"]
