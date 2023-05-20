# Documentación

## Creacion del entorno en AWS

Para desarrollar este proyecto se desplego una instancia de EC2 tipo amazon linux t2.micro en la cual, se realizo 
la instalacion de docker de la siguiente manera

[![instalacion.png](https://i.postimg.cc/GmGjdvP9/instalacion.png)](https://postimg.cc/w1xNkyGd)


## Creacion del Dockerfile 

Vamos a crea un directorio llamado imagen almacenar nuestro archivo Dockerfile
mkdir imagen

Ingresamos al directorio creado.
cd imagen

Creamos un archivo llamado Dockerfile
touch Dockerfile

y escribimos el contenido del Dockerfile

FROM httpd:latest
COPY ./buscaminas/ /usr/local/apache2/htdocs/

Previamente habiamos clonado el sitio web de buscaminas desde github a la instancia EC2
con git clone REPO

construimos la imagen de la siguiente manera 

docker build -t httpd:ciberdevops .

[![eliminardocker1.png](https://i.postimg.cc/5ytDHs9x/eliminardocker1.png)](https://postimg.cc/LYrxwBZ7)

Ahora vamos a utilizar dicha imagen para lanzar nuestro contenedor httpd
docker run -dit --name buscaminas -p 8080:80 httpd:ciberdevops

es importante tener en cuenta que debemos configurar el security group de la instancia EC2, para que permita trafico, a nuestra propia ip publica o a todo el mundo (0.0.0.0/0)

## verificamos el sitio web por el puerto publicado

[![dockereliminar2.png](https://i.postimg.cc/m2rR1KQM/dockereliminar2.png)](https://postimg.cc/dDggzHNt)

[![solucion2minas.png](https://i.postimg.cc/wTKqZwJs/solucion2minas.png)](https://postimg.cc/dDBcTm5q)

