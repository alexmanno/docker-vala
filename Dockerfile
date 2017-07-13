FROM ubuntu

RUN apt-get update && apt-get install -y software-properties-common python-software-properties && add-apt-repository ppa:vala-team/ppa && apt-get update && apt-get install -y valac

RUN mkdir /opt/project

WORKDIR /opt/project

RUN apt-get install -y libgtk-3-dev

RUN useradd -ms /bin/bash fpm
RUN usermod -aG fpm fpm
USER fpm

ENTRYPOINT ["valac"]
