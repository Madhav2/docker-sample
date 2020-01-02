FROM ubuntu

# File Author / Maintainer
MAINTAINER madhav

# Update the repository sources list
RUN apt-get update

RUN DEBIAN_FRONTEND=noninteractive apt install -y tzdata

# Install and run apache
RUN apt-get install -y apache2 && apt-get clean 

RUN apt-get install -y php

COPY . /var/www/html

EXPOSE 80
CMD apachectl -D FOREGROUND