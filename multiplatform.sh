podman manifest create quay.io/${USER}/image-builder-jws:latest
#for IMGTAG in amd64 s390x ppc64le arm64; do \
for IMGTAG in amd64 s390x ppc64le aarch64
do
  podman manifest add quay.io/${USER}/image-builder-jws:latest docker://quay.io/${USER}/image-builder-jws:$IMGTAG
done
podman manifest push --all quay.io/${USER}/image-builder-jws:latest docker://quay.io/${USER}/image-builder-jws:latest
