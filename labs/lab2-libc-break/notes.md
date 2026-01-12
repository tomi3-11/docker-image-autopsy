# Breaking the Libc

we gonna break the libc and see how the container response to it.

## Lets start
1. Create this file
```docker
# Using the latest alpine image
FROM alpine

# Removing the /lib to break the system
RUN rm -rf /lib

# run command
CMD ["ls"]
```

## You might an error like this
```bash
exec /bin/ls: no such file or directory 

```

2. Now building the image and running the container
```bash
# Building the image
docker build -t break-libc .

# Running the container
docker run break-libc

# Check available images
docker ps -a

# start a container if stopped
docker start <container-name>

# enter container and interact with it
docker exec -it <container-name> bash 

# and taraa u are inside now play around with it
```
