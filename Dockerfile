FROM node:lts

RUN npm install -g npm@latest @angular/cli

WORKDIR /app

ENTRYPOINT ["bash", "./scripts.sh"]