FROM Alpine

RUN apk add gcc musl-dev

RUN apk del gcc musl-dev

COPY hello.c /hello.c

RUN gcc /hello.c -o /hello

CMD ["/hello"]
