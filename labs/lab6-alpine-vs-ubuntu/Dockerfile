FROM alpine

# The fix is here: 
2. By installing compatability layer(glibc) 
RUN apk --no-cache gcompat libc6-compat

COPY ubuntu-built-binary /app

# making /app executable
RUN chmod +x /app

RUN ["/app"]
