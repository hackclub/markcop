FROM gliderlabs/alpine:3.3

RUN apk add --no-cache bash grep git perl aspell aspell-en
COPY . /markcop
WORKDIR /app

ENTRYPOINT ["/markcop/bin/markcop"]
