
1️⃣ Project Structure

hello-docker/
├── app.js
└── Dockerfile

2️⃣ Build the Docker Image
`docker build -t hello-docker .
`

`
docker images

`
3️⃣ Run the Docker Container
`
docker run --name my-container hello-docker

`

To list running containers:
`docker ps`

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




