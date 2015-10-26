FROM progrium/busybox

RUN opkg-install bash grep git
COPY bin/markcop /usr/local/bin/markcop
WORKDIR /app

ENTRYPOINT ["markcop"]
