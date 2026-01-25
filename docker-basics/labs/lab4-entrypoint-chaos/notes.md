# ENTRYPOINT vs CMD Chaos
Here we study the difference btn the two practically by using them

## Complete steps
lets start
1. Create a `Dockerfile` with the information below
```docker
# Using alpine image
FROM alpine

# ENTRYPOINT Vs CMD here
ENTRYPOINT ["echo"]

CMD ["hello"]

```
2. Now Build the image and run the container
```sh
# Build image
docker build -t entry-point .

# run container
docker run entry-point

# Expected outpu

hello

```
## What you will learn
- CMD is overideable
- ENTRYPOINT is fixed
- Runtime args behaviour

## How to fix it.
- Use correct combination depending on intent


