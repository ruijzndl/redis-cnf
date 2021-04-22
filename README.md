## Contents

This repo contains a Dockerfile that can be used for configuaration of redis in situations that do
not allow in container mounts (for example GitHub actions container service in 04-2021). Docker file is based on the example mentioned in [dockerhub](https://hub.docker.com/_/redis)

## Build the Docker the image manually
After the repo has been cloned, the following command can be used to build the development image:

```
$ docker  build -t ruijzndl/redis-cnf:6.0.1 .
```

## Use the Docker the image manually

Open a terminal into your container to manually start redis-server.

```
$ docker run --rm -it -p 6379:6379 -v $(pwd):/data -w /data ruijzndl/redis-cnf:6.0.1 bash
```