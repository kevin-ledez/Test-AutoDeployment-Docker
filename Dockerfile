FROM node:18-alpine

WORKDIR /app

COPY . /usr/src/app

ADD package*.json ./

RUN npm install -g @angular/cli

RUN npm install

CMD ["ng", "serve", "--host", "0.0.0.0"]