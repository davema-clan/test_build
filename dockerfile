FROM golang:alpine AS builder

LABEL stage=gobuilder

ENV CGO_ENABLED 0

RUN apk update --no-cache && apk add --no-cache tzdata

WORKDIR /build

COPY go.mod ./
COPY go.sum ./
RUN go mod download
COPY ./ .

RUN go build -ldflags="-s -w" -o /app/hello ./hello.go


FROM alpine

RUN apk update --no-cache && apk add --no-cache ca-certificates

WORKDIR /app
COPY --from=builder /app/hello /app/hello

CMD ["./hello"]