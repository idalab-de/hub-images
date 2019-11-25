#!/bin/bash 

image_name=idalab/hub_user
image_tag=kubeflow-kale-workshop
full_image_name=${image_name}:${image_tag}

docker build -t "${full_image_name}" .
docker push "${full_image_name}"

# Output the strict image name (which contains the sha256 image digest)
docker inspect --format="{{index .RepoDigests 0}}" "${IMAGE_NAME}"