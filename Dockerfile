FROM ubuntu:20.04


ENV TZ=Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone


RUN apt-get update && \
    apt-get upgrade -y &&  \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    build-essential \
    valgrind \
    curl \
    clang && \
    rm -fr /var/lib/apt/lists/*


WORKDIR /code

CMD /bin/bash
