#!/bin/bash

imageName='scratch-image'

docker build -t $imageName .

docker run $imageName
