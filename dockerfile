# Use CentOS 7 as base image
FROM centos:7

# Install necessary packages: httpd (Apache), zip, unzip
RUN yum install -y httpd zip unzip && \
    yum clean all

COPY inance.zip /var/www/html/

# Unzip the downloaded file inside /var/www/html
RUN unzip /var/www/html/neogym.zip -d /var/www/html/ && \
    cp -rvf /var/www/html/neogym/* /var/www/html/ && \
    rm -rf /var/www/html/neogym /var/www/html/neogym.zip

# Expose ports for HTTP and HTTPS
EXPOSE 80 443

# Command to run Apache HTTP server in the foreground
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]


