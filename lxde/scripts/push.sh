#!/bin/bash

WORKDIR="$( cd -L "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"

docker login
docker push apcai/devbox-lxde:ubuntu-16.04
docker logout

