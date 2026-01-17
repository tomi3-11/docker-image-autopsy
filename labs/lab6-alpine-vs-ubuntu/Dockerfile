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

COPY . .

# install the compiler
RUN apt-get update && apt-get install build-essential -y

RUN gcc hello.c -o ubuntu-build-binary

FROM alpine
COPY --from=builder ubuntu-build-binary /app

# --- Continuation ---
# Use the line below for fix 1 & fix 2 only
# COPY ubuntu-build-binary /app


CMD ["/app"]
