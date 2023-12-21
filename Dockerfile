FROM caddy:builder-alpine AS builder

RUN xcaddy build \
    --with github.com/greenpau/caddy-git

FROM caddy:alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
