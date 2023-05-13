FROM ubuntu:latest

LABEL version="0.0.1"
LABEL owner="shashankkumarrana@gmail.com"

RUN apt-get update && apt-get update -y

RUN apt-get install nginx -y

EXPOSE 90

CMD [ "nginx", "-g", "daemon off;"]
