#!/usr/bin/env bash

org=runsascoded
version=2.16.0
for name in clone test sum-crash; do
  tag="$org/dask-$name:$version"
  docker build -f "docker/Dockerfile.$name" -t "$tag" --build-arg dask_version="$version" .
  docker push "$tag"
done

