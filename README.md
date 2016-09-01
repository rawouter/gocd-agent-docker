# gocd-agent-docker

This container is build on top of gocd/gocd-agent.
It adds the docker binary into the image so that any commands can be run through docker containers, such as kubectl, to deploy the builds.

The make package is also added so that the shell scripts used for build, test and deployment can stay in the repo in an organized manner.

# Usage

See the [GoCD Agent image](https://hub.docker.com/r/gocd/gocd-agent/)
