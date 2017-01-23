## Run the service

1. Download the source code
2. Build the image from the Dockerfile `docker build -t jkulak/comments-microservice .`
3. Run the container from the created image: `docker run --name comments_service -p 8080:8080 jkulak/comments-microservice` (to run the container in the background, as a daemon, use the additional `-d` option)

The service is available now at: https://localhost:8080/

## Debug the service (view logs)

1. Log-in to the running container: `docker exec -ti comments_service  sh` (replace `comments_service` with the name you have given)
