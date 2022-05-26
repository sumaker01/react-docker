FROM node:latest as build
WORKDIR /app
COPY . /app
RUN npm install && npm run build

FROM nginx:latest
COPY --from=build /app/build /usr/share/nginx/html

# docker --name myreact -d -p 8080:80 sumaker01/react-docker
