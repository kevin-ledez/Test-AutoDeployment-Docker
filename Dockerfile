# Stage 1
FROM node:lts as node
WORKDIR /app
COPY . .
RUN npm install
RUN ng build
# Stage 2
FROM nginx:alpine
COPY --from=node /app/dist/client /usr/share/nginx/html
CMD ["ng","serve","--host", "0.0.0.0"]