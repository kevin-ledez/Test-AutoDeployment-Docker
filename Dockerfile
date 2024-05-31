FROM node:lts

RUN npm install -g npm@latest @angular/cli

RUN chmod +x scripts.sh

WORKDIR /app

ENTRYPOINT ["bash", "./scripts.sh"]