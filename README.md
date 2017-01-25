# Run the service

After downloading the source code:

1.  Build the image from the Dockerfile `docker build -t jkulak/comments-microservice .`
2.  Run the container from the created image: `docker run --name comments_service -v /Users/jkulak/Developer/comments-microservice/src/:/usr/local/tomcat/webapps/ROOT -p 8080:8080 jkulak/comments-microservice` (to run the container in the background, as a daemon, use the additional `-d` option)

The service is now available at: <http://localhost:8080/>

You can also use the `start.sh` script that takes two arguments, the name of the container and the port to use; example use: `./start.sh comments_www 8080`. Keep in mind that if you use the script to start the container, after stopping it, it will be removed.

# Debug the service (view logs)

1.  Log-in to the running container: `docker exec -ti comments_service sh` (replace `comments_service` with the name your container name)

# Development

1.  Comile the source code using java8 Docker image `docker run --rm -v "$PWD"/src:/usr/src/myapp -w /usr/src/myapp java:8 javac Main.java`
2.  Run the compiled code: `docker run --rm -v "$PWD"/src:/usr/src/myapp -w /usr/src/myapp java:8 java Main`
