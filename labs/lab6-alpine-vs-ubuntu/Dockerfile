# FROM alpine

# --- Fixes ---
# The fixes are here:
# 1. Use ubuntu base image
# FROM ubuntu 

# 2. By installing compatability layer(glibc)
FROM alpine

RUN apk add --no-cache gcompat libc6-compat



# --- Continuation ---
COPY ubuntu-build-binary /app


CMD ["/app"]
