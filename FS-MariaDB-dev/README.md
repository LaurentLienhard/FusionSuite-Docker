# How to run FusionSuite (DEV) on docker

## 01-Install

Clone repository on your computer

```git clone https://github.com/LaurentLienhard/FusionSuite-Docker.git C:\MyDev\Test```

Go to directory FS-MariaDB-dev

```cd C:\MyDev\Test\FusionSuite-Docker\FS-MariaDB-dev\```

and run

```docker-compose up -d```

```console
Creating network "fs-mariadb-dev_default" with the default driver
Pulling backend-mariadb (laurentlienhard/fusionsuite-backend:MARIADB-DEV)...
MARIADB-DEV: Pulling from laurentlienhard/fusionsuite-backend
0e29546d541c: Already exists
7f2ef7e1de61: Pull complete
635bde613c0a: Pull complete
2ea2d30ff986: Pull complete
aa79d19084c4: Pull complete
8736ad6ac6f1: Pull complete
7fe5f9928f35: Pull complete
241535c7a530: Pull complete
1d95270c6d67: Pull complete
cedee71c7526: Pull complete
71e00cf5fc33: Pull complete
f7e531d87f6c: Pull complete
Digest: sha256:442ae624cc5f6a39b5d14e74a3214bb156bcafa11793e02705af0a90919d2d14
Status: Downloaded newer image for laurentlienhard/fusionsuite-backend:MARIADB-DEV
Pulling frontend (laurentlienhard/fusionsuite-frontend:MARIADB-DEV)...
MARIADB-DEV: Pulling from laurentlienhard/fusionsuite-frontend
0e29546d541c: Already exists
403306c2854f: Pull complete
a6f4f13f8998: Pull complete
8c1025b4f0ff: Pull complete
Digest: sha256:d3fb8a9a161e0d921087b26876659c5f21858ecbbecdeeb4e79be1c0abaf2d0e
Status: Downloaded newer image for laurentlienhard/fusionsuite-frontend:MARIADB-DEV
Creating fs-mariadb-dev_backend-mariadb_1 ... done
Creating fs-mariadb-dev_frontend_1        ... done
```

## 02-Check

if you run ```docker ps``` you should see something like this

```text
CONTAINER ID        IMAGE                                              COMMAND             CREATED              STATUS              PORTS                                        NAMES
6ed2160d80b9        laurentlienhard/fusionsuite-backend:MARIADB-DEV    "./entrypoint.sh"   About a minute ago   Up About a minute   0.0.0.0:80->80/tcp, 0.0.0.0:3306->3306/tcp   fs-mariadb-dev_backend-mariadb_1
11e0066c5151        laurentlienhard/fusionsuite-frontend:MARIADB-DEV   "./entrypoint.sh"   About a minute ago   Up About a minute   0.0.0.0:8080->80/tcp                         fs-mariadb-dev_frontend_1
 ```

### _The container with name ```fs-mariadb_backend-mariadb_1``` is running ?_

 Open a browser en try : ```http://localhost/ping```

 The response should be ```pong```

 Open a browser en try : ```http://localhost/v1/status```

 The response should be ```{"connections":{"database":true}}```

 Congratulation FusionSuite backend is running !
 
### _The container with name ```fs-mariadb_frontend_1``` is running ?_
  
 Open a browser en try : ```http://localhost:8080/```

the FusionSuite home page should appear

Congratulation FusionSuite frontend is running !
