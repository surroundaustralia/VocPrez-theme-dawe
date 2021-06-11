# VocPrez-theme-dawe
A VocPrez UI theme for the [Department of Agriculture, Water and the Environment (DAWE)](https://www.awe.gov.au/)

### Shell
`apply.sh` adds HTML templates, style files and config settings to a VocPrez instance.

### Docker
`docker-build.sh` works with a local copy of the VocPrez core repo to make a Docker image

The scripts above need the following environment variables defined:

* `SPARQL_ENDPOINT`
* `SPARQL_USERNAME`
* `SPARQL_PASSWORD`
* `VP_HOME` - the home directory of VocPrez copied to the local computer
* `VP_THEME_HOME` - the directory this file is in
