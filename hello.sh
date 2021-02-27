# install docker then run this script
docker stop frog
docker rm $(docker ps -a -f status=exited -q)
docker build -t hello-world . # don't forget the .
docker run -d --name frog -p 5000:5000 hello-world
sleep 3
curl 127.0.0.1:5000 -v