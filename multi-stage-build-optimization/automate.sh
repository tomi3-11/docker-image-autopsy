#!/bin/bash

image=$1

# Build the image
docker build -t $image .

# Run the container
docker run $image


