#FROM ubuntu:latest
#FROM nginx:latest
#FROM python:latest
FROM tomcat:latest

#LABEL version="0.0.2"
#LABEL owner="shashankkumarrana@gmail.com"

#RUN apt-get update && apt-get update -y
#WORKDIR /usr/share/nginx/html
#n=15
#for i in range(0,n);
#    print (((n-(i+1))*' ')+(((2*i)+1)*'*'))
#for i in range(1,n):
#    print (((i)*' ')+(((((n-i)*2)-1)*'*')))

#RUN apt-get install nginx -y
#ADD ticktacktoe.py /
ADD **/*.jar /usr/local/tomact/webapps
#EXPOSE 80
EXPOSE 8080
#CMD [ "nginx", "-g", "daemon off;"]
#COPY index.html index.html
#CMD [ "python", "./ticktacktoe.py" ]
CMD [ "catalina.sh", "run"]