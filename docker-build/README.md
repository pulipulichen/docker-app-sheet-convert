# Dockerhub

- https://docs.docker.com/get-started/04_sharing_app/
- https://hub.docker.com/
- `docker image ls` 找出合適的名稱，例如「docker-app-sheet-convert_app」
- `docker tag docker-app-sheet-convert_app pudding/docker-app-libreoffice-nodejs-20230711`
- `docker push pudding/docker-app-libreoffice-nodejs-20230711`
- 修改Dockerfile `FROM pudding/docker-app-libreoffice-nodejs-20230711`