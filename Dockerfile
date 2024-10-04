FROM ubuntu:latest
RUN mkdir /my-app
COPY . /var/www/html
RUN apt-get update && apt-get install -y apache2
EXPOSE 89
CMD ["apachectl", "-D", "FOREGROUND"]
