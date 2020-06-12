FROM ubuntu:20.04
LABEL mainteiner="PetarVasilev"
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y nginx
EXPOSE 80
ENTRYPOINT [ "/usr/sbin/nginx","-g","daemon off;" ]
COPY index.html /var/www/html
