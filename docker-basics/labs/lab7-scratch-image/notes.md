# Scratch Image (Ultimate minimalism)

Here we are building a scratch image and run it's container. Breaking it and fixing it at the same time.

## Steps to follow
1. Create a docker file with this content below
```docker
# Using scratch image
FROM scratch

# Copy the details into the container
COPY hello /

# Running a command
CMD ["/hello"]

```

2. Build the image and run the container.
```sh
# Build the image
docker build -t scratch-image .

# Run the container
docker run scratch-image

```

3. Expected error.
```sh
exec /hello: no such file or directory

```

## What you learn
- No shell
- No libc
- Only you binary exists

## The fix
- Static binary required
- Explicit filesystem creation
