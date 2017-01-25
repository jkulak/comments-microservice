# Run the service

After downloading the source code:

1.  Build the image from the Dockerfile `docker build -t jkulak/comments-microservice .`
2.  Run the container from the created image: `docker run --name comments_service -v /Users/jkulak/Developer/comments-microservice/src/:/usr/local/tomcat/webapps/ROOT -p 8080:8080 jkulak/comments-microservice` (to run the container in the background, as a daemon, use the additional `-d` option)

The service is available now at: <https://localhost:8080/>

# Debug the service (view logs)

1.  Log-in to the running container: `docker exec -ti comments_service sh` (replace `comments_service` with the name you have given)

# Development

1.  Build the java development image JDK `docker build -t jkulak/java-dev -f Dockerfile.dev .`
2.  Run the container from the created image: `docker run --name java_development -v /Users/jkulak/Developer/comments-microservice/src/:/app jkulak/java-dev`
