FROM progrium/busybox

RUN opkg-install bash grep git perl
COPY bin/markcop /markcop/markcop
WORKDIR /app

ENTRYPOINT ["/markcop/markcop"]
