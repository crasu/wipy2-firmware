#!/bin/sh
mkdir source
cd source
git clone https://github.com/pycom/pycom-esp-idf.git 
cd pycom-esp-idf && git submodule update --init 
cd ..
git clone https://github.com/pycom/pycom-micropython.git
