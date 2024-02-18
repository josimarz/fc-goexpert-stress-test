FROM golang:alpine AS builder

WORKDIR /var/app

COPY . .

RUN go build cmd/stresstest/main.go

FROM scratch

WORKDIR /var/app

COPY --from=builder /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
COPY --from=builder /var/app/main .

ENTRYPOINT [ "./main" ]