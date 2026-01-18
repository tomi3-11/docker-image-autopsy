# --- Fixes ---

# 1. Using static binaries
FROM ubuntu AS builder
COPY . .
RUN apt-get update && apt-get install build-essential -y 
RUN gcc -static hello.c -o hello
 
FROM scratch

COPY --from=builder hello /

CMD ["/hello"]
