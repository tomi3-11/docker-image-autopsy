# FROM alpine

# --- Fixes ---
# The fixes are here:
# 1. Use ubuntu base image
# FROM ubuntu 

# 2. By installing compatability layer(glibc)
#FROM alpine

#RUN apk add --no-cache gcompat libc6-compat

# 3. By using statis binary
FROM ubuntu AS builder

# install the compiler
RUN sudo apt-get update && sudo apt-get install build-essential -y

# build the code here (found in this lab dir)
gcc hello.c -o hello

FROM alpine
COPY --from=builder hello /app

# --- Continuation ---
COPY ubuntu-build-binary /app


CMD ["/app"]
