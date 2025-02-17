# App Gallery - Orlando Stalin

---

## Pre-requisitos
Para correr la aplicación debe instalar [Docker Desktop](https://www.docker.com/products/docker-desktop/) y [Docker Compose](https://docs.docker.com/compose/install/), también se recomienda instalar [NodeJS](https://nodejs.org/en/download).

---

## Iniciar la app
Para ver la aplicación en un servidor local (localhost) se deben correr los siguientes comandos en la terminal (en VSCode puede utilizar la combinación `Ctrl + Ñ` para abrir una terminal en el directorio de trabajo actual).

Posteriormente debe correr el comando `docker-compose build`, este proceso puede demorar hasta 10 minutos mientras se instalan las dependencias y paquetes necesarios. Posteriormente debe correr el comando `docker-compose up -d` de esta forma iniciara un servidor local en el puerto 8100, para acceder al servidor puede dirigirse a http://localhost:8100. Listo, la aplicación ya se encuentra corriendo, cualquier cambio se vera reflejado incluso en el servidor local. De todas formas también puede descargar la app para IOS que se encuentra en la carpeta Final_App, en el archivo llamado App.app.
