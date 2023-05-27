# Solución Lab 01

## 1. Primera Parte

Dockerhub : https://hub.docker.com/_/nginx/tags?page=5

docker pull nginx:1.22.1


[![Docker-nginx.png](https://i.postimg.cc/BnSw5cWp/Docker-nginx.png)](https://postimg.cc/crzm03Lt)


 ## Nginx Bash 

crear Bash 

[![nginx-bash.png](https://i.postimg.cc/MTVDJv2X/nginx-bash.png)](https://postimg.cc/ftWXxWbh)


## Permisos de Ejecución 

chmod +x script.sh


[![Permisos-de-Ejecucion.png](https://i.postimg.cc/FFxybt9t/Permisos-de-Ejecucion.png)](https://postimg.cc/Dm84FMJ5)


## Docker Pull mediante Bash

Correr Bash ./1-nginx.sh

## Revisar Imagen Docker 

Docker Image ls 

[![Docker-image-nginx.png](https://i.postimg.cc/3JRvgdSp/Docker-image-nginx.png)](https://postimg.cc/QV2CDxrx)


# Segunda Parte 

## iniciando contenedor MySQL 

 - docker run --name=db -p 3306:3306 -e MYSQL_ROOT_PASSWORD=secret-pw -d mysql:8

[![Msql.png](https://i.postimg.cc/Xqmx4yNC/Msql.png)](https://postimg.cc/D4Q1c0Xv)


## Conexion MySQL

- docker exec -it db bash
- mysql -u root -p
- Password : secret-pw

[![Conexion-msql.png](https://i.postimg.cc/CKS7h00m/Conexion-msql.png)](https://postimg.cc/fVqmC6J9)


## Iniciando contenedor PHPMyAdmin

- docker run --name=my-admin -p 82:80 --link db:db -d phpmyadmin

[![PHPAdmin.png](https://i.postimg.cc/MTcd4DqS/PHPAdmin.png)](https://postimg.cc/wypXRD1f)


## Verificar Servicio PHPMyAdmin

-  http://localhost:82/
-  Usuario : root 
-  Password : secret-pw

[![Php-login.png](https://i.postimg.cc/PfwSQ2Sb/Php-login.png)](https://postimg.cc/hhK8SbWh)

## Accede al panel principal 

Conectado !

[![php-consola.png](https://i.postimg.cc/k52QXgZN/php-consola.png)](https://postimg.cc/2qfb0rC3)

## Stop Containers

Validar los IDs de los contenedores 

- Docker ps  ( para listar los contenedores )
- Docker stop 143 5c6  ( se pueden seleccionar las 3 primeros datos alfanumericos )
- Docker ps ( para validar que estan en stop los contenedores ) 


[![Docker-stop.png](https://i.postimg.cc/G2hHh79W/Docker-stop.png)](https://postimg.cc/nsgH3142)

## Remove Images

Validar las imagenes 

- Docker image ls  ( listar las imagenes ) 
- Docker rmi -f fe8 5f5 ( se pueden seleccionar las 3 primeros datos alfanumericos )
- Docker image ls  ( para validar que las imagenes ya no existen ) 

[![docker-rmi.png](https://i.postimg.cc/Gt4P9hHn/docker-rmi.png)](https://postimg.cc/y3z3bKmL)
