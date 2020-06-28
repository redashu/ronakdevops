FROM centos
MAINTAINER  ashutoshh@linux.com
RUN  yum  install  httpd  -y
WORKDIR  /var/www/html/
COPY  index.html  . 
ADD  https://nickjanetakis.com/assets/blog/cards/differences-between-a-dockerfile-docker-image-and-docker-container-001320c81dd8d2989df10d0bec36341fd6a94b043f6f9de1c26ee79eaf16e566.jpg  docker.jpg
RUN  chmod 644  docker.jpg 
EXPOSE  80 
#  we are telling docker engine  to use 80 port in case user forget to define it
ENTRYPOINT  /usr/sbin/httpd -DFOREGROUND
