FROM golang:1.19.0-alpine3.16

LABEL version="0.0.1"
LABEL repository="https://github.com/cdevents/github-action"
LABEL "com.github.actions.name"="CDEvents"
LABEL "com.github.actions.description"="Send CDEvents"
LABEL "com.github.actions.icon"="rss"
LABEL "com.github.actions.color"="green"

# Configure Go
ENV GOROOT /usr/lib/go
ENV GOPATH /go
ENV PATH /go/bin:$PATH

RUN mkdir -p ${GOPATH}/src ${GOPATH}/bin

RUN apk add curl
RUN apk add nodejs npm

COPY "entrypoint.sh" "/entrypoint.sh"
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
