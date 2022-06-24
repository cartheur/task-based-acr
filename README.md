## A Task-based Azure Container Registry (ACR)
Code to create images for a task-based approach to build applications destined for containers.

Creates a GitHub Actions Runner in a debian11 (bullseye-slim) OS.

The idea is to leverage the tools with the container registry to run tasks regarding build of applications destined for the vCloud.

### Build the image (to your local docker)

After cloning the repo, run the command in the folder containing the ```Dockerfile```, a VSCode terminal is recommended:

```docker build -t debian-runner .```

and it will build the image and place it your local-machine. You can find it by its name when running

```PS ..\task-based-acr> docker images```

| REPOSITORY    |  TAG   |   IMAGE ID   |    CREATED     |  SIZE  |
|---------------|--------|--------------|----------------|--------|
| debian-runner | latest | e88a6a7111b9 | 21 minutes ago | 2.27GB |

### Running the image

The image is a docker agent with Az integration that can recieve tasks when started:

```docker run -it debian-runner (args**)``` 

where

```RUNNER_ENTERPRISE_URL```,
```RUNNER_ORGANIZATION_URL``` or, 
```RUNNER_REPOSITORY_URL``` needs to be specified when registering an Actions runner.

In the _create_ folder there is a workflow and bicep code for a new registry.

### Image size

The image size is 2.27GB (as a Github Actions Runner). 

### Image vulnerabilities (via Snyk scan)

```docker scan debian-runner``` will produce the following report:

| Resource Type     | Value                         |
|-------------------|-------------------------------|
| Package manager   | deb                           |
| Project name      | docker-image|debian-runner    |
| Docker image      | debian-runner                 |
| Platform          | linux/amd64                   |
| Base image        | debian:11.3-slim              |

Tested 184 dependencies for known vulnerabilities, found 111 vulnerabilities.
According to our scan, you are currently using the most secure version of the selected base image.