ARG PYTHON_VERSION=3.9 ALPINE_VERSION=3.13

FROM python:${PYTHON_VERSION}-alpine${ALPINE_VERSION}

# required by grpc
RUN apk add --no-cache \
    g++ \
    gcc \
    musl-dev \
    libffi-dev \
    libstdc++ \
    build-base \
    linux-headers

COPY requirements.txt ./

RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt && \
    # cleanup
    rm requirements.txt && \
    apk del --purge \
    g++ \
    gcc \
    musl-dev \
    libffi-dev \
    libstdc++ \
    build-base \
    linux-headers