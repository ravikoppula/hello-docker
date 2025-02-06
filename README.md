1️⃣ Project Structure

hello-docker/
├── app.js
└── Dockerfile

2️⃣ Build the Docker Image

``docker build -t hello-docker .``

``docker images``

3️⃣ Run the Docker Container
``docker run --name my-container hello-docker``

To list running containers:
``docker ps``

To list all containers (including stopped ones):

`` docker ps -a``

4️⃣ View Container Logs

`` docker logs my-container``

5️⃣ Stop and Remove the Container

`` docker stop my-container``
OR
``docker rm my-container
``
To remove all stopped containers:
`` docker container prune ``

6️⃣ Remove the Docker Image
``docker rmi hello-docker``

To remove all unused images:
`` docker image prune``

7️⃣ Share Your Docker Image (Push to Docker Hub)
If you want to share your image, first log in to Docker Hub:
``docker login
``

Then tag the image (replace your-dockerhub-username with your actual Docker Hub username):
``docker tag hello-docker your-dockerhub-username/hello-docker``

Push the image to Docker Hub:
`` docker push your-dockerhub-username/hello-docker ``

Now, anyone can run your image with:

``docker run your-dockerhub-username/hello-docker``

To create a Docker image, use the following command:

``docker build -t <image_name>:<tag> .
``

* docker build → Builds an image from a Dockerfile.
* -t <image_name>:<tag> → Assigns a name (image_name) and optional tag (tag) to the image.
* . → Specifies the current directory as the build context.

``docker build -t myapp:latest .``

To create and run a Docker container, use the following command:

``docker run -d --name <container_name> -p <host_port>:<container_port> <image_name>:<tag>
``

* docker run → Creates and starts a new container.
* -d → Runs the container in detached mode (in the background).
* --name <container_name> → Assigns a custom name to the container.
* -p <host_port>:<container_port> → Maps a port on the host to a port inside the container.
* <image_name>:<tag> → Specifies the Docker image to use.

``docker run -d --name mycontainer -p 8080:80 myapp:latest
``



  

