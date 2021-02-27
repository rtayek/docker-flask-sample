docker stop frog
docker rm -f frog
docker build -t hello-world .
docker run -d --name frog -p 5000:5000 hello-world
timeout 3
curl 127.0.0.1:5000 -v