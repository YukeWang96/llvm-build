FROM ubuntu:18.04

RUN apt-get -y update
RUN apt-get install -y build-essential \
                    cmake   \
                    python  \
                    ninja-build \
                    zlib1g-dev

#RUN apt-get install wget
#RUN wget https://github.com/Kitware/CMake/releases/download/v3.18.2/cmake-3.18.2.tar.gz && \
 #   tar -zxvf cmake-3.18.2.tar.gz && \
  #  cd cmake-3.18.2 && \
  #  ./bootstrap && \
   # make && make install

CMD ["/bin/bash"]
WORKDIR /tmp/llvm-project/build
