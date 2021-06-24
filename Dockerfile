FROM debian:testing

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install \
    -y --no-install-recommends --no-install-suggests vim git \ 
    libboost-all-dev cmake ca-certificates make g++

RUN git clone --depth 1 --branch 3.3.9 https://gitlab.com/libeigen/eigen.git
RUN cd eigen && mkdir build && cd build && cmake .. && make install

COPY gazelle/ gazelle/

WORKDIR gazelle
RUN mkdir build && cd build && cmake -DUNITTESTS=1 .. && make

WORKDIR bin
