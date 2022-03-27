FROM ubuntu
MAINTAINER kUSHAGRA
RUN apt-get update -y
RUN apt install nginx -y
RUN apt install ufw -y
RUN ufw allow 'Nginx HTTP'   
RUN apt install net-tools -y

ENV myname KushagraBansal
EXPOSE 80
CMD ["nginx","-g","daemon off;"]
