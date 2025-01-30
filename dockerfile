# Use CentOS 7 as the base image
FROM centos:7

# Set environment variable to avoid interactive prompts during yum installations
ENV DEBIAN_FRONTEND=noninteractive

# (Optional) Disable a specific repository if required (replace 'base' with the appropriate repository name)
# RUN yum --disablerepo=base install -y httpd zip unzip && \
#     yum clean all

# Install necessary packages: Apache (httpd), zip, and unzip
RUN yum install -y httpd zip unzip && \
    yum clean all

# (Optional) Configure yum to skip unavailable repositories (if necessary)
# You can add the appropriate repository name instead of <repoid> if needed
# RUN yum-config-manager --save --setopt=<repoid>.skip_if_unavailable=true

# Copy local 'inance-html' folder into the container's /var/www/html directory
COPY inance-html/ /var/www/html/

# Expose port 80 for HTTP
EXPOSE 80

# Set the command to run Apache in the foreground when the container starts
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
