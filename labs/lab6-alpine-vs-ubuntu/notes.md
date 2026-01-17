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


```
