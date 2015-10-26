FROM ubuntu:14.04

RUN apt-get --yes update && apt-get --yes upgrade
RUN apt-get --yes install -y curl git python2.7 python-pip

RUN pip2 install github-backup

RUN mkdir /backup-data
VOLUME /backup-data
COPY backup.sh /backup.sh

CMD bash /backup.sh
