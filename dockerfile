# Use Ubuntu as the base image
FROM ubuntu:latest

# Update package list and install necessary packages
RUN apt-get update && apt-get install -y apache2 zip unzip wget

# Download website files
RUN wget -O /tmp/oxer.zip https://www.free-css.com/assets/files/free-css-templates/download/page296/oxer.zip

# Unzip website files
RUN unzip /tmp/oxer.zip -d /tmp/

# Copy extracted website files to Apache's root directory
RUN cp -r /tmp/oxer-html/* /var/www/html/

# Set correct permissions
RUN chmod -R 755 /var/www/html && chown -R www-data:www-data /var/www/html

# Expose HTTP and HTTPS ports
EXPOSE 80 443

# Start Apache in the foreground
CMD ["apache2ctl", "-D", "FOREGROUND"]
