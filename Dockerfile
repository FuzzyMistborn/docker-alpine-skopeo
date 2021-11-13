FROM alpine:latest
RUN apk add --update docker openrc skopeo
RUN rc-update add docker boot
