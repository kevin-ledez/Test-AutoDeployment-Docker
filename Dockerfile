FROM node:lts

RUN npm install -g npm@latest @angular/cli

RUN npm run build

WORKDIR /app

# ENTRYPOINT ["sh", "./scripts.sh"]