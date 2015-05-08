# docker-nodejs-example
Example os very basic docker container with a node app

## Useful docker commands

Create a container, tagged 'node-hello-app', with content of folder '.'
```
docker build -t node-hello-app .
```

Run container (with no access from the host)
```
docker run hello-node
```

Run container mapping port 8080 to be accessed from the host port 1234 (could be 8080 too)
```
docker run -p 1234:8080 hello-node
```

Run container mapping ports and mounting containing folder /usr/src/log to be accessible from host
```
docker run -p 8080:8080 -v /usr/src/log hello-node
```

Print the volumes attached to the container, that can be accessible from the host (name is random if not specified)
```
docker inspect -f {{.Volumes}} high_goldstine
```

Stop container (name is random if not specified)
```
docker stop high_goldstine
```

See running containers
```
docker ps
```

See all containers (even finished ones)
```
docker ps -a
```

Remove all containers
```
docker rm $(docker ps -aq)
```

See images
```
docker images
```

Remove all images
```
docker rmi $(docker images -q)
```
