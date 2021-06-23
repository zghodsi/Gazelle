FROM debian:testing

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install \
    -y --no-install-recommends --no-install-suggests vim git \ 
    libboost-all-dev cmake ca-certificates make g++

COPY gazelle/ gazelle/

WORKDIR gazelle
RUN cd eigen-3.3.9 && mkdir build && cd build && cmake .. && make install
RUN mkdir build && cd build && cmake -DUNITTESTS=1 .. && make

WORKDIR bin
