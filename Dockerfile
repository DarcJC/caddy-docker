FROM caddy:2.3.0-builder-alpine AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/alidns

FROM caddy:2.3.0-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy

