FROM node:6.6
MAINTAINER Martin Halamicek <martin@keboola.com>

ADD . /code

WORKDIR /code

RUN npm install -g bower \
  && npm install -g grunt-cli \
  && npm install

EXPOSE 9100

CMD ["grunt", "server"]
