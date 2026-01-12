# Break the shell (Classic Failure)
This lab shows how docker images can easily be broken, that simple mistakes or breaking it teaches you that without some features it can easily break.

Lets start by removing the `/bin/sh` then running running our docker image. <br>
We shall be using `Alpine` a small image lightweight around `8.44MB` in size.

To use it without a docker file? do this below.
```bash
# Pull the latest image
docker pull alpine # This is gonna pull the latest image

# Run the alpine image
docker run -it --name my-alpine alpine

# Thats it you are inside alpine now
```

## Now lets break it
1. Create a Dockerfile
```docker
# Using alpine image
FROM alpine

# Removing the shell also known as BusyBox ash in alpine
RUN rm -f /bin/sh

CMD ["sh"]

```

2. Now build and run the container
```sh
# Build the image
docker build -t broken-shell

# run the container
docker run broken-shell
```

3. Now here comes the error
```sh
exec: "sh": executable file not found
```
