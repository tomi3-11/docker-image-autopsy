# Using the alpine image
FROM alpine

RUN adduser -D appuser

USER appuser

# The bug
#RUN touch /root/file.txt

# The fix
WORKDIR /home/appuser

RUN touch file.txt
