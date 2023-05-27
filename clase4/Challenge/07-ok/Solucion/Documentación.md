Backend Pokemon App

Este es el repositorio del backend de la aplicación Pokemon. Proporciona una API utilizando FastAPI.

Configuración
Asegúrate de tener instalado Docker en tu sistema antes de comenzar.

Instalación

Clona este repositorio:
git clone <URL_DEL_REPOSITORIO_BACKEND>

Navega al directorio del backend:
cd backend-pokemon-app

Construye la imagen de Docker para el backend:
docker build -t backend-pokemon-app .

Uso
Ejecuta el siguiente comando para iniciar el backend:
docker run -p 8000:8000 -v $(pwd):/app backend-pokemon-app

Esto iniciará el contenedor de Docker y mapeará el puerto local 8000 al puerto 8000 dentro del contenedor.

Accede a la API en tu navegador
http://localhost:8000

---

Frontend Pokemon App

Este es el repositorio del frontend de la aplicación Pokemon. Proporciona una interfaz de usuario para interactuar con la API del backend.

Configuración
Asegúrate de tener instalado Docker en tu sistema antes de comenzar.

Instalación

Clona este repositorio:
git clone <URL_DEL_REPOSITORIO_FRONTEND>

Navega al directorio del frontend:
cd frontend-pokemon-app

Construye la imagen de Docker para el frontend:
docker build -t frontend-pokemon-app .

Uso
Ejecuta el siguiente comando para iniciar el frontend:
docker run -p 3000:3000 -v $(pwd):/app frontend-pokemon-app
Esto iniciará el contenedor de Docker y mapeará el puerto local 3000 al puerto 3000 dentro del contenedor.

Accede a la aplicación en tu navegador:
http://localhost:3000

Docker Compose

En lugar de ejecutar manualmente los comandos de Docker para el backend y el frontend, también puedes utilizar Docker Compose para simplificar el proceso.

Asegúrate de tener instalado Docker Compose en tu sistema antes de continuar.

Crea un archivo llamado docker-compose.yml en la raíz del proyecto.

Copia el siguiente contenido en el archivo docker-compose.yml:

version: "3.8"
services:
backend-pokemon-app:
build:
context: ./backend-pokemon-app
dockerfile: Dockerfile
ports: - 8000:8000
volumes: - ./backend-pokemon-app:/app
command: uvicorn main:app --host 0.0.0.0 --port 8000

frontend-pokemon-app:
build:
context: ./frontend-pokemon-app
dockerfile: Dockerfile
ports: - 3000:3000
volumes: - ./frontend-pokemon-app:/app

3. Ejecuta el siguiente comando para iniciar ambos contenedores utilizando Docker Compose:
   docker-compose up

Esto construirá las imágenes de Docker para el backend y el frontend, y luego iniciará los contenedores correspondientes.

Accede a la aplicación en tu navegador:

http://localhost:8000 y http://localhost:3000

¡Eso es todo! Ahora tienes el backend y el frontend de la aplicación Pokemon ejecutándose en contenedores de Docker.
