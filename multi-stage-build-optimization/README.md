# The Native Image (Baseline Failure)

## Goal
Establish a baseline mistake that almost everyone makes.

## Explanation
You will build a Docker image that:
- Compiles a program
- Runs successfully
- Is fundamentally wrong

This lab exists so you have something real to compare against later.

## Theory (Under the hood)
- Every `RUN` creates a new immutable layer
- Installed tools stay forever
- Docker does not "forget" anything

## Build (Intentionally Naive)

1. Create a c file first
```c
#include <stdio.h>

int main(){
    // A simple c program that displays a message
    printf("Hello from docker container.\n");

    return 0;

}
```
2. Create this file
```docker
# using alpine image
FROM alpine

RUN apk add gcc musl-dev

COPY hello.c /hello.c

RUN gcc /hello.c -o /hello

CMD ["/hello"]
```

## Inspect
1. Building the image
```sh
docker build -t hello-naive .
```
2. Run the container
```sh
docker run hello-naive
```
3. Check the image
```sh
docker images hello-naive
```
4. Inspect the image history
```sh
docker history hello-naive
```

## Questions (To be answer)
- Why does gcc exist in runtime?
- Which layer introduced gcc?
- What does Docker "remember"?

## Fix
- Not fixing right now, No optimization just yet

## Research Directions
- Docker image layers
- Union filesystems (OverlayFS)
- Copy-on-write
