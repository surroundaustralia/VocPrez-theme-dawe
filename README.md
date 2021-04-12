# VocPrez-theme-dawe
A VocPrez UI theme for the [Department of Agriculture, Water and the Environment (DAWE)](https://www.awe.gov.au/)

### Shell
`apply_*.sh` adds HTML templates, style files and config settings to a VocPrez instance.

`apply_dev.sh` configures a dev instance and `apply_vm.sh` is for testing the instance on a VM.

`apply_[dev/vm]_windows.sh` was created and edited in Windows, where `apply_[dev/vm].sh` has return characters removed for use. `apply_[dev/vm].sh` should be used when configuring the VocPrez instance.

### Docker
`docker-build.sh` works with a local copy of the VocPrez core repo to make a Docker image

The scripts above need the following environment variables defined:

* `SPARQL_ENDPOINT`
* `SPARQL_USERNAME`
* `SPARQL_PASSWORD`
* `VP_HOME` - the home directory of VocPrez copied to the local computer
* `VP_THEME_HOME` - the directory this file is in
