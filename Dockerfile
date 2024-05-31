# Stage 1
FROM node:lts as node
WORKDIR /app
COPY ["package.json", "./"]
COPY ["package-lock.json", "./"]
RUN npm install
COPY ["./", "./"]
RUN npm run build
# Stage 2
FROM nginx:alpine
COPY --from=node /app/dist/client /usr/share/nginx/html