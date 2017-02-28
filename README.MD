# docker container for wipy build #

# Prepare source and image #
   
    docker build -t pycom-micropython container/
    ./checkout.sh # checks out source to directory $(pwd)/source

# Run container to compile source #

    docker run -v $(pwd)/source:/source -ti pycom-micropython 

# Flash controller #

    docker run -v $(pwd)/source:/source --device /dev/ttyUSB0:/dev/ttyUSB0 pycom-micropython /usr/bin/make -C /source/pycom-micropython/esp32 flash

