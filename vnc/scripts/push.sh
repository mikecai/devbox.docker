#!/bin/bash

WORKDIR="$( cd -L "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"

docker push apcai/devbox-vnc:ubuntu-16.04-lxde

