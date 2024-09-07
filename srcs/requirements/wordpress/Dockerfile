FROM debian:oldstable

# Install packages
RUN apt-get update && apt-get install -y \
    wget \
    curl \
    bash \
    php \
    php-cgi \
    php-mysql \
    php-fpm \
    php-pdo \
    php-gd php-cli \
    php-mbstring \
    redis \
    php-redis \
    && rm -rf /var/lib/apt/lists/*

# Copy configuration files
COPY ./srcs/wordpress/tools/wp-config.php /var/www/html/wp-config.php

# Copy scripts
COPY ./srcs/wordpress/setup.sh /tmp/setup.sh

# Expose ports
EXPOSE 80

# Run setup script
CMD bash /tmp/setup.sh

# Run the following command to build the image:
# docker build -t wordpress ./srcs/requirements/wordpress

# Run the following command to run the container:
# docker run -d --name wordpress -p 80:80 wordpress