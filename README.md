# EHT Pegasus Workflow

## Run DIFMAP

```sh
cd difmap
./run.sh ../data/uvfits ../scripts

# Monitor workflow
pegasus-status -w -l dags

# Outputs
ls -ltrh output
```

## Run EHT Imaging

```sh
cd eht-imaging
./run.sh ../data/uvfits ../scripts

# Monitor workflow
pegasus-status -w -l dags

# Outputs
ls -ltrh output
```

## Run SMILI

```sh
cd smili
./run.sh ../data/uvfits ../scripts

# Monitor workflow
pegasus-status -w -l dags

# Outputs
ls -ltrh output
```

## If running on an ARM based Mac

1. The `smili` workflow fails with an `Illegal Instruction` error. To fix this disable `Use Rosetta for x86_64/amd64 emulation on Apple Silicon` checkbox in Docker settings.
1. The `difmap` workflow might fail if the `Use Rosetta for x86_64/amd64 emulation on Apple Silicon` checkbox is disabled Docker settings.
