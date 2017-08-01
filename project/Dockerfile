FROM ubuntu:14.04

# uncomment 2 lines for latest node.js
RUN apt-get update; apt-get install -y apt-transport-https curl; curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
RUN apt-get update; apt-get install -y --force-yes nodejs git ssh-client python make g++ libkrb5-dev

RUN mkdir -p /root/app

RUN npm install -g bower gulp ionic@legacy cordova forever

ADD ./root/app/package.json /tmp/package.json
RUN cd /tmp && npm install && cp -a /tmp/node_modules /root/app/

ADD ./root/app/server/package.json /tmp/server/package.json
RUN mkdir -p /root/app/server/node_modules
# && mkdir /root/app/server/node_modules
RUN cd /tmp/server && npm install && cp -a /tmp/server/node_modules /root/app/server/

ADD ./root/app/bower.json /tmp/bower.json
RUN cd /tmp && bower install --force-latest --allow-root
RUN mkdir -p /root/app/www && cp -a /tmp/bower_components /root/app/

ADD . /
RUN ln -s ../bower_components /root/app/www/bower_components
RUN cd /root/app; gulp sass

RUN chmod +x /run_app.sh

ENV HOSTNAME=app
ENV PROJECT=ecoluiton
EXPOSE 8100

CMD /run_app.sh
