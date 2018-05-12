#!/bin/sh

# save project path
JAVA_PATH=$(cd "$(dirname "$0")" && pwd)
echo $JAVA_PATH

# run java container
docker run --rm --name java_container -itd -e DISPLAY=localhost:0.0 -v $JAVA_PATH:/java -w /java java bash

# show std io/err in java container
docker attach java_container

# escape read sequence
# ctrl + p, ctrl + q

# excute command in running container
# docker exec -it java_container bash
