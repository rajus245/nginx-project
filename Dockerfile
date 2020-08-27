FROM centos:7
LABEL "maintainer"="raju"
RUN yum -y install epel-release \
    && yum -y update \
    && yum -y install nginx
ADD index.html /usr/share/nginx/html
VOLUME /usr/share/nginx/html
VOLUME /etc/nginx
EXPOSE 80/tcp
CMD ["nginx", "-g daemon off;"]