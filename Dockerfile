FROM python:3.11

RUN apt-get update
RUN apt-get install -y libxml2-dev libxslt1-dev zlib1g-dev libjpeg-dev python3-dev
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*
RUN mkdir /site
RUN groupadd -r user
RUN useradd -r -g user user
RUN chown -R user:user /site
RUN pip3 install nikola==8.2.4 aiohttp watchdog 

USER user
WORKDIR /site
CMD ["nikola", "help"]
