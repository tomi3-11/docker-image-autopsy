# FROM alpine

# The fixes are here:
# 1. Use ubuntu base image
FROM ubuntu 

# 2. By installing compatability layer(glibc) 
# RUN apk add --no-cache gcompat libc6-compat

COPY ubuntu-build-binary /app

# making /app executable
# RUN chmod +x /app

CMD ["/app"]
