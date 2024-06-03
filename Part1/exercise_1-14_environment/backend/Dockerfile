FROM golang:1.16

ENV PORT=80 REQUEST_ORIGIN=http://127.0.0.1:8080

EXPOSE 8080

WORKDIR /usr/src/app

COPY . .

RUN go build

CMD ["./server"]
