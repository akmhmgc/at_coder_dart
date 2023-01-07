FROM google/dart:2.7.2
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 4EB27DB2A3B88B8B \
  && apt-get update -qq \
  && apt-get install -y python3-pip \
  && pip3 install --user online-judge-tools

WORKDIR /problems
