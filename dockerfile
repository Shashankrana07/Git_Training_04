#FROM ubuntu:latest
FROM nginx:latest

LABEL version="0.0.2"
LABEL owner="shashankkumarrana@gmail.com"

#RUN apt-get update && apt-get update -y
WORKDIR /usr/share/nginx/html

#RUN apt-get install nginx -y

#EXPOSE 80

#CMD [ "nginx", "-g", "daemon off;"]
COPY index.html index.html
