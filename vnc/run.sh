docker stop vnc
docker rm vnc
docker run -d -p 5901:5901 --name vnc apcai/devbox-vnc:16.04
sleep 5s
docker ps
