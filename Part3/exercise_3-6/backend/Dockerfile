FROM golang:alpine AS build-env

WORKDIR /usr/src/app

COPY . .

RUN go build




FROM alpine

ENV PORT=80 REQUEST_ORIGIN=http://localhost:8080

WORKDIR /usr/src/app

COPY --from=build-env /usr/src/app/server /usr/src/app/

USER 405

CMD ["./server"]
