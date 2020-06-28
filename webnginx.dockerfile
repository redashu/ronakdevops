FROM nginx 
MAINTAINER  ashutoshh@linux.com
COPY  index.html  /usr/share/nginx/html/index.html
ADD  https://nickjanetakis.com/assets/blog/cards/differences-between-a-dockerfile-docker-image-and-docker-container-001320c81dd8d2989df10d0bec36341fd6a94b043f6f9de1c26ee79eaf16e566.jpg  /usr/share/nginx/html/
# if we don't  define cmd or entrypoint then what ever cmd or entrypoint of base image will be there that will be used
WORKDIR  /usr/share/nginx/html 
RUN  mv differences-between-a-dockerfile-docker-image-and-docker-container-001320c81dd8d2989df10d0bec36341fd6a94b043f6f9de1c26ee79eaf16e566.jpg  docker.jpg 
RUN  chmod  644  docker.jpg
