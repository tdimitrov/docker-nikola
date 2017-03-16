FROM ubuntu:16.04

ENV REFRESHED_AT 16-Mar-2017

RUN apt-get update
RUN apt-get remove -y python2.7
RUN apt-get install -y libxml2-dev libxslt1-dev zlib1g-dev libjpeg-dev python3-dev python3-pip
RUN pip3 install nikola
RUN mkdir /root/workdir
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*

WORKDIR /root/workdir
ENTRYPOINT ["nikola"]
CMD ["help"]
