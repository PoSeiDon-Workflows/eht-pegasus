#!/usr/bin/env bash

docker build -t pegasus/reproducibility-eht:difmap -f difmap/Dockerfile difmap

docker build -t pegasus/reproducibility-eht:eht-imaging -f eht-imaging/Dockerfile eht-imaging

docker build -t pegasus/reproducibility-eht:smili -f smili/Dockerfile smili
