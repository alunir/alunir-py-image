FROM python:3.9-alpine
RUN apk add gcc libc-dev g++
RUN GRPC_PYTHON_BUILD_SYSTEM_ZLIB=true pip install grpcio aioredis google-cloud-logging tdigest
