# Users and Permissions Failure

Here we break the image by creating a user and trying to access or create a file without previleges

## Steps to do
1. Create a Dockerfile
```docker
FROM alpine

RUN adduser -D appuser

USER appuser

RUN touch /root/file.txt

```

2. Build image and run the container
```docker
# build image
docker build -t permission .

# Run the container
docker run permission

```

3. Expected Error
```sh


```
