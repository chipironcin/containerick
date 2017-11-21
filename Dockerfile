FROM alpine
LABEL maintainer="Jorge Marin"

COPY ricksFace.txt ricksFace.txt
COPY text.txt text.txt
COPY centerGraphic.sh centerGraphic.sh
COPY entrypoint entrypoint

ENV TERM xterm
ENTRYPOINT /entrypoint
