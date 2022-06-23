## A Task-based Azure Container Registry (ACR)
Code to create images for a task-based approach to build applications destined for containers.

Creates a GitHub Actions Runner in a debian11 (bullseye-slim) OS.

The idea is to leverage the tools with the container registry to run tasks regarding build of applications destined for the vCloud.

## Future works

It is thought to create a distroless build, which will require a debian-bazel container. This will improve performance and reduce the footprint of the runners.