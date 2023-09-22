# nogcloud

Utility CLI with some extra-commands running aside `gcloud` official CLI.

## Usage

```shell
./nogcloud get-external-ip --instance $INSTANCE_NAME --zone $ZONE --project $PROJECT
```

## How to build

Simple guide, how to build this project

### Requirements

- ([Shc (shell script compiler)](<https://en.wikipedia.org/wiki/Shc_(shell_script_compiler)>))

```shell
./build.sh
```

It will generate the binary artifact at `build/nogcloud` directory.
