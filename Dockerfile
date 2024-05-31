# Stage 1
FROM node:lts as node
WORKDIR /app
COPY . .
RUN npm install
RUN npm run bluild -- prod
# Stage 2
FROM nginx:alpine
COPY --from=node /app/dist/client /usr/share/nginx/html