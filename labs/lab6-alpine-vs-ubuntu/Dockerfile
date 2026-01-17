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
#RUN apt-get update && apt-get install build-essential -y

# Do this if you did't have build you code else uncomment the line after "From alpine below"
# build the code here (found in this lab dir)
#RUN gcc hello.c -o hello

FROM alpine
# Only uncomment for if already built code outside
COPY --from=builder ubuntu-build-binary /app

#COPY --from=builder hello /app

# --- Continuation ---
# Use the line below for fix 1 & fix 2 only
# COPY ubuntu-build-binary /app


CMD ["/app"]
