#FROM ubuntu:latest
#FROM nginx:latest
FROM python:latest

LABEL version="0.0.2"
LABEL owner="shashankkumarrana@gmail.com"

#RUN apt-get update && apt-get update -y
#WORKDIR /usr/share/nginx/html
#n=15
#for i in range(0,n);
#    print (((n-(i+1))*' ')+(((2*i)+1)*'*'))
#for i in range(1,n):
#    print (((i)*' ')+(((((n-i)*2)-1)*'*')))

#RUN apt-get install nginx -y
ADD https://github.com/Shashankrana07/Git_Training_04/blob/main/ticktacktoe.py /

#EXPOSE 80

#CMD [ "nginx", "-g", "daemon off;"]
#COPY index.html index.html
CMD [ "python", "./ticktacktoe.py" ]