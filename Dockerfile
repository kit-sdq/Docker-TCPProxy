FROM alpine:latest

RUN apk add --no-cache socat

EXPOSE 8080/tcp

CMD ["sh", "-c", "socat -d -d TCP-LISTEN:8080,fork TCP:${HOST}:${PORT}"]
