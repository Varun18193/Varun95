# Use CentOS 7 as base image
FROM centos:7

# Install necessary packages: httpd (Apache), zip, unzip
RUN yum install -y httpd zip unzip && \
    yum clean all

COPY inance.zip /var/www/html/

RUN unzip /var/www/html/inance.zip -d /var/www/html/ && \
    cp -rvf /var/www/html/inance/* /var/www/html/ && \
    rm -rf /var/www/html/inance /var/www/html/inance.zip

EXPOSE 80 443

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]


