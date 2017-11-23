FROM alpine
LABEL maintainer="Jorge Marin"

COPY assets /
COPY entrypoint.sh entrypoint.sh
COPY centerGraphic.sh centerGraphic.sh

ENV TERM xterm

ENTRYPOINT /entrypoint.sh
