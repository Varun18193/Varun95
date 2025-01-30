# Use Nginx as the base image
FROM nginx

# Install necessary packages: zip, unzip
RUN yum install -y zip unzip && \
    yum clean all

# Copy the inance.zip file into the container's /usr/share/nginx/html directory
COPY inance.zip /usr/share/nginx/html/

# Unzip the downloaded file, copy its contents, and clean up
RUN unzip /usr/share/nginx/html/inance.zip -d /usr/share/nginx/html/ && \
    cp -rvf /usr/share/nginx/html/inance/* /usr/share/nginx/html/ && \
    rm -rf /usr/share/nginx/html/inance /usr/share/nginx/html/inance.zip

# Expose ports for HTTP and HTTPS
EXPOSE 80 443

# Nginx is already set to run in the foreground by default




