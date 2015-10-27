FROM progrium/busybox

RUN opkg-install bash grep git
COPY bin/markcop /markcop/markcop
WORKDIR /app

ENTRYPOINT ["/markcop/markcop"]
