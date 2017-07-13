FROM ubuntu

RUN apt-get update && apt-get install -y software-properties-common python-software-properties && add-apt-repository ppa:vala-team/ppa && apt-get update && apt-get install -y valac

RUN mkdir /opt/project

WORKDIR /opt/project

ENTRYPOINT ["valac"]
