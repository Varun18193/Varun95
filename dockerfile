# Use CentOS 7 as base image
FROM centos:7

# Install necessary packages: httpd (Apache), zip, unzip
RUN yum install -y httpd zip unzip && \
    yum clean all

# Copy the local inance.zip file into the container's /var/www/html directory
COPY inance.zip /var/www/html/

# Unzip the downloaded file, copy its contents, and clean up
RUN unzip /var/www/html/inance.zip -d /var/www/html/ && \
    cp -rvf /var/www/html/inance/* /var/www/html/ && \
    rm -rf /var/www/html/inance /var/www/html/inance.zip

# Expose port 80 for HTTP
EXPOSE 80

# Set the command to run Apache (httpd) in the foreground
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
