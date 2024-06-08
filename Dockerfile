FROM alpine:3.20

ARG BUILD_DATE
ARG VCS_REF

LABEL \
  maintainer="FuzzyMistborn <fuzzy@fuzzymistborn.com>" \
  architecture="amd64/x86_64" \
  alpine-version="3.20" \
  org.opencontainers.image.title="docker-alpine-skopeo" \
  org.opencontainers.image.authors="FuzzyMistborn <fuzzy@fuzzymistborn.com>" \
  org.opencontainers.image.description="Alpine image with both Docker and Skopeo" \
  org.opencontainers.image.source="https://github.com/FuzzyMistborn/docker-alpine-skopeo" \
  org.opencontainers.image.revision=$VCS_REF \
  org.opencontainers.image.created=$BUILD_DATE

RUN apk add --update docker openrc skopeo curl git
RUN rc-update add docker boot
