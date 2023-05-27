# Solución Lab 06

## 1. Crear Dockerfile 

[![Dockerfile.png](https://i.postimg.cc/hvt2bT2H/Dockerfile.png)](https://postimg.cc/R621v65R)

## 2. Revision File Python " app.py " 

- Se agrego el accesso al puerto 5000
- app.run(host='0.0.0.0' , port=5000) 

[![app-py-solucion.png](https://i.postimg.cc/TwMwDc33/app-py-solucion.png)](https://postimg.cc/hJscFTmk)


## 3. Docker Build 

- Crear Imagen -  Docker build -t poke-lab6 .

- Container corriendo puerto 5000 

[![solucion-5000.png](https://i.postimg.cc/cHzrJNtP/solucion-5000.png)](https://postimg.cc/bDQz6WTR)


## 4. Docker Push - Docker Hub

### Docker Login 

[![docker-login.png](https://i.postimg.cc/02yPB46w/docker-login.png)](https://postimg.cc/fkpG3Bfz)

### Docker Push

- Tag de imagen 
- Push de imagen


[![docker-push.png](https://i.postimg.cc/PqYjDs7B/docker-push.png)](https://postimg.cc/jWxmV9tX)

### Docker Hub

- imagen final 

[![Dockerhub.png](https://i.postimg.cc/7hY8jCLk/Dockerhub.png)](https://postimg.cc/FdqBLHcW)


## Solucion Alternativa 

- crear la imagen sin agregar port=5000 en el File app.py 


[![Solucion-a.png](https://i.postimg.cc/gkmHFVdR/Solucion-a.png)](https://postimg.cc/K4pMtg1v)

## Correr contenedor 

- Correr contenedor remapeando a otro puerto 

- Docker run -d -p 8000:5000 poke-lab6 


[![localhost8000.png](https://i.postimg.cc/26YVbx07/localhost8000.png)](https://postimg.cc/DWC2R1kS)