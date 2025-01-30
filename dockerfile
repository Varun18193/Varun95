# Use CentOS 7 as base image
FROM centos:7

# Fix repository URL if necessary
RUN curl -o /etc/yum.repos.d/CentOS-Base.repo https://raw.githubusercontent.com/CentOS/sig-cloud-instance-images/master/7/x86_64/packer/centos-7-cloud.repo && \
    yum clean all

# Install necessary packages: httpd (Apache), zip, unzip
RUN yum install -y httpd zip unzip && \
    yum clean all

# Add the inance.zip file directly into the container's /var/www/html directory
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/inance.zip /var/www/html/

# Unzip the downloaded file
RUN unzip /var/www/html/inance.zip -d /var/www/html/ && \
    cp -rvf /var/www/html/inance/* /var/www/html/ && \
    rm -rf /var/www/html/inance /var/www/html/inance.zip

# Expose port 80 for HTTP
EXPOSE 80

# Set the command to run Apache (httpd) in the foreground
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]





