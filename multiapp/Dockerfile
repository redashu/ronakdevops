FROM fedora
MAINTAINER  ashutoshh@linux.com
ENV  web=1
#  to create env variable in docker image 
RUN  yum install httpd  -y
RUN  mkdir  /website/  /website/app1  /website/app2  /website/app3 
ADD  app1   /website/app1/
ADD  app2   /website/app2/
ADD  app3   /website/app3/
COPY startapp.sh  /website/
WORKDIR  /website
RUN chmod +x  startapp.sh
EXPOSE 80 
ENTRYPOINT  ["./startapp.sh"]
