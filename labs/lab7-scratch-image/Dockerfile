# --- Fixes ---

# 1. Using static binaries
# Using ubuntu image as builder
FROM ubuntu AS builder

# Copying all the contents into the container
COPY . .

# Updating and installing c compiler
RUN apt-get update && apt-get install build-essential -y

# Compiling the c program
RUN gcc -static hello.c -o hello

# Using the scratch image 
FROM scratch

COPY --from=builder hello /

CMD ["/hello"]
