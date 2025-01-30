# Use CentOS 7 as the base image
FROM centos:7

# Set environment variable to avoid interactive prompts during yum installations
ENV DEBIAN_FRONTEND=noninteractive


# Install necessary packages: Apache (httpd), zip, and unzip
RUN yum install -y httpd zip unzip && \
    

# Copy local 'inance-html' folder into the container's /var/www/html directory
COPY inance-html/ /var/www/html/

# Expose port 80 for HTTP
EXPOSE 80

# Set the command to run Apache in the foreground when the container starts
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
