FROM golang:1.16

ENV PORT=80 REQUEST_ORIGIN=http://localhost:8080

WORKDIR /usr/src/app

COPY . .

RUN go build

RUN useradd -m appuser
USER appuser

CMD ["./server"]
