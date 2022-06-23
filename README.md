## A Task-based Azure Container Registry (ACR)
Code to create images for a task-based approach to build applications destined for containers.

Creates a GitHub Actions Runner in a debian11 (bullseye-slim) OS.

The idea is to leverage the tools with the container registry to run tasks regarding build of applications destined for the vCloud.

### What is here

Here is a docker agent that will build a runner with Az integration into an image that can recieve tasks when started:

```docker run -it debian-runner (args**)``` 

where

```RUNNER_ENTERPRISE_URL```,
```RUNNER_ORGANIZATION_URL``` or, 
```RUNNER_REPOSITORY_URL``` needs to be specified when registering an Actions runner.

In the _create_ folder there is a workflow and bicep code for a new registry.

### Future works

It is thought to create a distroless build, which will require a debian-bazel container. This will improve performance and reduce the footprint of the runners.

### Vulnerabilities (Snyk)

| Resource Type     | Value                         |
|-------------------|-------------------------------|
| Package manager   | deb                           |
| Project name      | docker-image|debian-runner    |
| Docker image      | debian-runner                 |
| Platform          | linux/amd64                   |
| Base image        | debian:11.3-slim              |

Tested 184 dependencies for known vulnerabilities, found 111 vulnerabilities.
According to our scan, you are currently using the most secure version of the selected base image.