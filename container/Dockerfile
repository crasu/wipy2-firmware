FROM ubuntu:16.04

VOLUME /source

ENV PATH $PATH:/root/xtensa-esp32-elf/bin
ENV IDF_PATH /source/pycom-esp-idf
WORKDIR /root

RUN DEBIAN_FRONTEND=noninteractive apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q git autoconf build-essential wget python python-serial
RUN wget https://dl.espressif.com/dl/xtensa-esp32-elf-linux64-1.22.0-59.tar.gz && tar xzf xtensa-esp32-elf-linux64-1.22.0-59.tar.gz

CMD cd /source/pycom-micropython/esp32 && make BOARD=WIPY
