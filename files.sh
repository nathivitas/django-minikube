#!/bin/bash

for i in {1..10}; do
  filename=$(date +"%Y-%m-%d_%H-%M-%S").txt
  touch $filename
  echo "Created file: $filename"
done

