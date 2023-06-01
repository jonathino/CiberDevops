## Lab-04 - Documentación y Solución
---

# 1. Crear una imagen con un servidor web Apache y el mismo contenido que en la carpeta content (fijate en el Dockerfile con el que cree simple-nginx)

*  Tomando como base el Dockerfile, creamos la imagen basada en Apache (httpd):

    [![4-1.png](https://i.postimg.cc/FHFm1s9N/4-1.png)](https://postimg.cc/QHzvyD9y)

*   docker build . -t simple-apache:new

    [![4-2.png](https://i.postimg.cc/BbJ7Nb7v/4-2.png)](https://postimg.cc/JDdQzrLw)

*   Listando imagenes
    
    [![4-3.png](https://i.postimg.cc/fRNzhnqQ/4-3.png)](https://postimg.cc/crFyQjNF)

# 2. Ejecutar un contenedor con mi nueva imagen

*   docker run -d --name myapache -p 5050:80 simple-apache:new

    [![4-4.png](https://i.postimg.cc/hjgTJ5tk/4-4.png)](https://postimg.cc/p9Gp4k8C)
    
*   Ejecutamos en el navegador:

    [![4-6.png](https://i.postimg.cc/m22gqS0b/4-6.png)](https://postimg.cc/8s9GfLp3)

# 3. Averiguar cuántas capas tiene mi nueva imagen

*   docker inspect simple-apache:new #En el apartado "Layers" pueden contarse cuántas capas hay:

    [![4-5.png](https://i.postimg.cc/Yq7jXdgR/4-5.png)](https://postimg.cc/dDWq3m5Z)

*   docker history simple-apache:new #Todas las acciones que son < 0B son capas

    [![4-7.png](https://i.postimg.cc/QdLmnGmP/4-7.png)](https://postimg.cc/KRNtRWdr)

*   docker image inspect simple-nginx -f '{{.RootFS.Layers}}' - Inspecciona las capas:

    Aquí veremos en detalle, las capas que contienen las instrucciones del Dockerfile

    [![4-8.png](https://i.postimg.cc/y8KyBhRY/4-8.png)](https://postimg.cc/7fB2n2Xp)


Dockerfile

```
#Imagen que voy a utilizar como base
FROM nginx:alpine

#Etiquetado
LABEL project="bootcamp"

#Como metadato, indicamos que el contenedor utiliza el puerto 80
EXPOSE 80

#Modificaciones sobre la imagen que he utilizado como base, en este caso alpine
COPY content/ /usr/share/nginx/html/
```

### Entrega
- Documentación
- Print de pantalla con los resultados.