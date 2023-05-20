# Implementacion de sitio web en contenedor NGINX


## Creacion del entorno en AWS

+ Para desarrollar este proyecto se desplego una instancia de EC2 tipo amazon linux t2.micro en la cual, se realizo 
la instalacion de docker de la siguiente manera

[![instalacion.png](https://i.postimg.cc/GmGjdvP9/instalacion.png)](https://postimg.cc/w1xNkyGd)


## Creacion del Dockerfile 

+ Se crea el archivo Dockerfile con la siguiente estructura, con el objetivo de poder
 
utilizar nginx y copiar el sitio web desarrollado

FROM nginx:stable
COPY ["./web/", "/usr/src/"]

+ Construimos la imagen basados en el archivo Dockerfile

docker build -t bootcamp .

[![nginx.png](https://i.postimg.cc/Hs28Yjp1/nginx.png)](https://postimg.cc/JGszKrDp)

## Crear el contenedor basado en la imagen que se creo

+ Creamos el contenedor llamado web-bootcamp escuchando por el puerto 9999 

docker run -dit --name web-bootcamp -p 9999:80 bootcamp

[![runninx.png](https://i.postimg.cc/Mpn6CGHD/runninx.png)](https://postimg.cc/HrC15dQc)

+ es importante tener en cuenta que debemos configurar el security group de la instancia EC2, para que permita trafico, a nuestra propia ip publica o a todo el mundo (0.0.0.0/0) por el puerto 9999

## Ingresamos a nuestro sitio web desplegado por puerto 9999 en docker

[![serverok.png](https://i.postimg.cc/02JXhRxS/serverok.png)](https://postimg.cc/cr0c8zv1)

+ validacion de ejecucion de contenedor

[![ejecutados.png](https://i.postimg.cc/VkqGLqJL/ejecutados.png)](https://postimg.cc/9DftLqPv)


