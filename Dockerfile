FROM node:0.12.2

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ADD . /usr/src/app
RUN npm install

# replace this with your application's default port
EXPOSE 8080

CMD [ "npm", "start" ]
