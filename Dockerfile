FROM node:lts

RUN npm install -g npm@latest @angular/cli

WORKDIR /app

CMD [ "ng", "serve" ]

# ENTRYPOINT ["sh", "./scripts.sh"]