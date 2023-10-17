FROM alpine:3.18

# This hack is widely applied to avoid python printing issues in docker containers.
# See: https://github.com/Docker-Hub-frolvlad/docker-alpine-python3/pull/13
ENV PYTHONUNBUFFERED=1

RUN echo "**** install PyPy ****" && \
    apk add --no-cache pypy3 --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing && \
    if [ ! -e /usr/bin/python ]; then ln -sf pypy3 /usr/bin/python ; fi && \
    \
    echo "**** install pip ****" && \
    python -m ensurepip && \
    rm -r /usr/lib/pypy3.10/ensurepip && \
    if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi && \
    pip install --no-cache --upgrade pip setuptools wheel
