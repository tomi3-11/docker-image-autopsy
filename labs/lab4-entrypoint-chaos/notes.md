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
docker run image goodbye

```


