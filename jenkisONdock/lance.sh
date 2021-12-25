#https://www.youtube.com/watch?v=HFQHB81vJHI

git clone https://github.com/eldagithub/dockerjenkins.git
dockerjenkins/

gitcom
git push

docker build -t myjenkins-blueocean:1.1 .

#docker run --name jenkins-blueocean --rm --detach   --network jenkins --env DOCKER_HOST=tcp://docker:2376   --env DOCKER_CERT_PATH=/certs/client --env DOCKER_TLS_VERIFY=1   --publish 8080:8080 --publish 50000:50000   --volume jenkins-data:/var/jenkins_home   --volume jenkins-docker-certs:/certs/client:ro   myjenkins-blueocean:1.1

docker run --name jenkins-blueocean --rm --detach   --network jenkins --env DOCKER_HOST=tcp://docker:2376   --env DOCKER_TLS_VERIFY=0   --publish 8080:8080 --publish 50000:50000   myjenkins-blueocean:1.1

docker logs 89b8349319dec293f76aa7c1f1e7fad406d37512f2fca62f5da7bfaf3f868d96
