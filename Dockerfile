FROM python:buster
RUN apt update \
 && apt install -y gcc libc-dev libssl-dev g++
RUN pip3 install wheel && GRPC_PYTHON_BUILD_SYSTEM_ZLIB=true pip3 install grpcio
RUN pip3 install aioredis google-cloud-logging tdigest
