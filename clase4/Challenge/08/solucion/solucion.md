# Solución Lab 08

## 1. Primera Parte

Revision de arquitectura de red solicitada 

[![custom-network.png](https://i.postimg.cc/nL6dFkMy/custom-network.png)](https://postimg.cc/kVvNwWQs)


- Crear "Custom Network" dentro del Docker-compose File  para que ambos contenedores se comuniquen dentro de la misma red


## 2. Segunda Parte

Crear Dockerfile Python 
- Incluir requirements.txt ( Lista de Versiones de Apps )

[![Dockerfile.png](https://i.postimg.cc/cCcTcGTW/Dockerfile.png)](https://postimg.cc/30dgK6Pf)


Crear Docker-Compose.yml 

Servicios : 
Python Puerto :8080
Redis  Redis  :6379
Incluir Custom-Network 

networks:
  py-redis-nw:
   driver: bridge 

[![Docker-Compose.png](https://i.postimg.cc/zGySyhm8/Docker-Compose.png)](https://postimg.cc/Mn8j4vKF)



## 3. Tercera Parte

Validar Custom Network Creada

Docker Network ls  ( Listar Networks )

[![docker-network.png](https://i.postimg.cc/HWSybL9x/docker-network.png)](https://postimg.cc/3WvNTY65)


## 4. Cuarta Parte

Validar la aplicacion en Localhost:8080

[![app-running.png](https://i.postimg.cc/jdpChnws/app-running.png)](https://postimg.cc/LnVH9X37)
