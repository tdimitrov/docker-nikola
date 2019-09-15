FROM python:3

RUN apt-get update
RUN apt-get install -y libxml2-dev libxslt1-dev zlib1g-dev libjpeg-dev python3-dev
RUN pip3 install nikola==8.0.2
RUN mkdir /root/workdir
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*

WORKDIR /root/workdir
CMD ["nikola", "help"]
