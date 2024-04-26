FROM --platform=linux/amd64 globalcomputinglab/reproducibility-eht:eht-imaging 

USER root

RUN apt-get update -y && apt-get install -y wget curl libcurl4 openssh-client

USER eht
