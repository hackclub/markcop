FROM gliderlabs/alpine:3.2

RUN apk --update add bash grep git perl aspell-en
COPY bin/markcop /markcop/markcop
WORKDIR /app

ENTRYPOINT ["/markcop/markcop"]
