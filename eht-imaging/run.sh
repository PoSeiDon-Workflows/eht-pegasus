#!/bin/bash

DIR=dags

# Plan and submit the workflow
pegasus-plan --conf pegasus.properties \
             --sites condorpool \
             --output-sites local \
             --dir ${DIR} \
             --relative-submit-dir . \
             --cleanup leaf \
             --force \
             --submit \
             workflow.yml

# Replace docker_init with container_init
# find ${DIR} -name '*.sh' -exec sed -E -i '' -e "s/(difmap|eht-imaging|smili)\.tar//" -e "s@^docker_init (.*)@container_init ; cont_image='globalcomputinglab/reproducibility-eht:\1'@g" {} \;
