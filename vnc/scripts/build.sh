#!/bin/bash

WORKDIR="$( cd -L "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"

docker build --rm -t apcai/devbox-vnc:ubuntu-16.04-lxde $WORKDIR
