FROM gocd/gocd-agent

RUN apt-get install apt-transport-https ca-certificates
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
RUN echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main" > /etc/apt/sources.list.d/docker.list \
  && apt-get update \
  && apt-get install -q -y -f --no-install-recommends \
      docker.io \
      make \
  && apt-get autoremove -q -y \
  && apt-get clean \
  && rm -rf /tmp/* /var/tmp/*

#https://github.com/docker/docker/issues/21184
RUN addgroup --gid 978 docker-fedora \
  && addgroup --gid 1001 docker-ubuntu \
  && addgroup --gid 233 docker-coreos \
  && adduser go docker-fedora \
  && adduser go docker-ubuntu \
  && adduser go docker-coreos
  
