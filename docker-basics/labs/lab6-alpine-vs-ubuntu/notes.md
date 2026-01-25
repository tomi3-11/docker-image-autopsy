# Alpine vs Ubuntu Binary Failure
We are going to be working with test ubuntu binaries in alpine image

## Steps to follow
1. Create a Dockerfile with the following content
```docker
# Using alpine image
FROM alpine

# copying ubuntu binaries into alpine image
COPY ubuntu-built-binary /app

# running a command
CMD ["/app"]

```

2. Build image and run the container
```sh
docker build -t alpine-ubuntu .

docker run alpine-ubuntu

```

3. Expected error
```sh


[+] Building 10.6s (8/8) FINISHED                                                                              docker:default
 => [internal] load build definition from Dockerfile                                                                     0.1s
 => => transferring dockerfile: 94B                                                                                      0.0s
 => [internal] load metadata for docker.io/library/alpine:latest                                                         2.5s
 => [auth] library/alpine:pull token for registry-1.docker.io                                                            0.0s
 => [internal] load .dockerignore                                                                                        0.1s
 => => transferring context: 2B                                                                                          0.0s
 => [internal] load build context                                                                                        0.2s
 => => transferring context: 15.94kB                                                                                     0.0s
 => [1/3] FROM docker.io/library/alpine:latest@sha256:865b95f46d98cf867a156fe4a135ad3fe50d2056aa3f25ed31662dff6da4eb62   2.9s
 => => resolve docker.io/library/alpine:latest@sha256:865b95f46d98cf867a156fe4a135ad3fe50d2056aa3f25ed31662dff6da4eb62   0.2s
 => => sha256:1074353eec0db2c1d81d5af2671e56e00cf5738486f5762609ea33d606f88612 3.86MB / 3.86MB                           2.1s
 => => extracting sha256:1074353eec0db2c1d81d5af2671e56e00cf5738486f5762609ea33d606f88612                                0.4s
 => [2/3] COPY ubuntu-build-binary /app                                                                                  1.1s
 => ERROR [3/3] RUN ["/app"]                                                                                             2.8s
------                                                                                                                        
 > [3/3] RUN ["/app"]:
1.751 exec /app: no such file or directory
------
Dockerfile:5
--------------------
   3 |     COPY ubuntu-build-binary /app
   4 |     
   5 | >>> RUN ["/app"]
   6 |     
--------------------
ERROR: failed to build: failed to solve: process "/app" did not complete successfully: exit code: 255


```

## What you will learn is...
- glibc vs musl
- Dynamic loader mismatch
- "invisible" dependencies

## The fix for this
- Use ubuntu base image
- or static binary
- or install compatibility layer
