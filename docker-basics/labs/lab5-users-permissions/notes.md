# Users and Permissions Failure

Here we break the image by creating a user and trying to access or create a file without previleges

## Steps to do
1. Create a Dockerfile
```docker
FROM alpine

RUN adduser -D appuser

USER appuser

RUN touch /root/file.txt

```

2. Build image and run the container
```docker
# build image
docker build -t permission .

# Run the container
docker run permission

```

3. Expected Error
```sh

> [3/3] RUN touch /root/file.txt:
1.038 touch: /root/file.txt: Permission denied
------
Dockerfile:8
--------------------
   6 |     USER appuser
   7 |     
   8 | >>> RUN touch /root/file.txt
   9 |     
--------------------
ERROR: failed to build: failed to solve: process "/bin/sh -c touch /root/file.txt" did not complete successfully: exit code: 1

```

4. Fix
```sh
# Using the alpine image
FROM alpine

RUN adduser -D appuser

USER appuser

# The bug
#RUN touch /root/file.txt

# The fix
WORKDIR /home/appuser

RUN touch file.txt

```

- Correct ownership
- Change work directory

## What you will learn
- Linux permissions still apply
- USER affects build vs runtime
- Root != default forever
