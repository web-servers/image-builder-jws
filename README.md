# image-builder-jws
Image to build custom images for JWS or tomcat and push them a Docker repository.

# Build the Docker image:
```
podman build -t quay.io/${USER}/image-builder-jws .
podman login quay.io/${USER}/image-builder-jws
podman push quay.io/${USER}/image-builder-jws
```

