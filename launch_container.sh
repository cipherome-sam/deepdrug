#!/bin/bash

docker run -it --rm --gpus all \
        --name deepdrug \
        -v ${PWD}:/src \
        deepdrug:latest