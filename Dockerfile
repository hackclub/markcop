FROM gliderlabs/alpine:3.2

RUN apk --update add bash grep git perl aspell-en
COPY . /markcop
WORKDIR /app

ENTRYPOINT ["/markcop/bin/markcop"]
