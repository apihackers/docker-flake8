FROM alpine:3.4

RUN apk add --no-cache python3 && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install flake8 pep8-naming && \
    rm -r /root/.cache

ENTRYPOINT ["/usr/bin/flake8"]
