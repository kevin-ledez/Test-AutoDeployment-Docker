FROM node:lts

RUN npm install -g npm@latest @angular/cli


COPY scripts.sh ./scripts.sh

WORKDIR /app

ENTRYPOINT ["sh", "./scripts.sh"]