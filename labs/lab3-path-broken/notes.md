# Breaking the PATH
It time to break the path, so lets start by creating our `Dockerfile`.

## Here are the complete steps
1. Create a Dockerfile
```docker
# Using latest alpine image
FROM alpine

# Manipulating the PATH variables
ENV PATH=""

# Run a command in the container
CMD ["ls"]

```

2. Build and run the container
```sh
docker build -t broken-path

docker run broken-path
```

3. Error you'll get
```sh

```
