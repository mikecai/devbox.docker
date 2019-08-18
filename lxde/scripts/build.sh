#!/bin/bash

WORKDIR="$( cd -L "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"

docker build --rm -t apcai/devbox-lxde:ubuntu-16.04 $WORKDIR 
