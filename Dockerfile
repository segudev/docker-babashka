FROM alpine:3

ENV BB_VERSION=0.4.6

RUN apk add --update-cache curl bash

RUN curl -sLO https://raw.githubusercontent.com/babashka/babashka/master/install \
    && chmod +x install \
    && ./install --version $BB_VERSION --static

COPY http-server.bb script.bb

ENTRYPOINT ["bb"]

CMD ["script.bb"]
