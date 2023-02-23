FROM golang:1.20.1-alpine

RUN apk update && apk add git make
RUN git clone https://github.com/zricethezav/gitleaks.git /gitleaks

RUN cd /gitleaks && make build
RUN chmod +x /gitleaks/gitleaks

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]