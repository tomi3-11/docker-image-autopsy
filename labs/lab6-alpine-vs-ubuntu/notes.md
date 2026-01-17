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
[+] Building 7.8s (7/8)                                                                                        docker:default
 => [internal] load build definition from Dockerfile                                                                     0.5s
 => => transferring dockerfile: 94B                                                                                      0.0s
 => [internal] load metadata for docker.io/library/alpine:latest                                                         4.8s
 => [auth] library/alpine:pull token for registry-1.docker.io                                                            0.0s
 => [internal] load .dockerignore                                                                                        0.5s
 => => transferring context: 2B                                                                                          0.0s
 => [internal] load build context                                                                                        0.8s
 => => transferring context: 2B                                                                                          0.0s
 => [1/3] FROM docker.io/library/alpine:latest@sha256:865b95f46d98cf867a156fe4a135ad3fe50d2056aa3f25ed31662dff6da4eb62   0.9s
 => => resolve docker.io/library/alpine:latest@sha256:865b95f46d98cf867a156fe4a135ad3fe50d2056aa3f25ed31662dff6da4eb62   0.2s
 => CANCELED [2/3] COPY ubuntu-built-binary /app                                                                         0.0s
Dockerfile:3
--------------------
   1 |     FROM alpine
   2 |     
   3 | >>> COPY ubuntu-built-binary /app
   4 |     
   5 |     RUN ["/app"]
--------------------
ERROR: failed to build: failed to solve: failed to compute cache key: failed to calculate checksum of ref y7mz6dksqwr2foj1ko5bkknyi::51wfn14dagi53v1s9csrdgwa7: "/ubuntu-built-binary": not found


```

## What you will learn is...
- glibc vs musl
- Dynamic loader mismatch
- "invisible" dependencies

## The fix for this
- Use ubuntu base image
- or static binary
- or install compatibility layer
