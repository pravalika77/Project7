FROM centos:centos7
RUN yum update -y
RUN yum install httpd -y
COPY index.html /var/lib/html/
CMD ["usr/sbin/httpd","-D","FOREGROUND"]
