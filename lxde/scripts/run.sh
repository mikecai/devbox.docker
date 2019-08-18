#!/bin/bash

WORKDIR="$( cd -L "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"

docker run -d --name lxde apcai/devbox-lxde:ubuntu-16.04

