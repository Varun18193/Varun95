# Use CentOS 7 as the base image
FROM centos:7

# Install necessary packages: Apache, unzip, and wget
RUN yum install -y httpd zip unzip wget

# Download website files
RUN wget -O /tmp/oxer.zip https://www.free-css.com/assets/files/free-css-templates/download/page296/oxer.zip

# Unzip website files
RUN unzip /tmp/oxer.zip -d /tmp/

# Copy extracted website files to Apache's root directory
RUN cp -r /tmp/oxer-html/* /var/www/html/

# Set correct permissions
RUN chmod -R 755 /var/www/html && chown -R apache:apache /var/www/html

# Expose HTTP and HTTPS ports
EXPOSE 80 443

# Start Apache in the foreground
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
