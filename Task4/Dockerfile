FROM ubuntu:18.04
RUN apt-get update -y
RUN apt-get install apache2 -y
ENV DEVOPS=Yevhen

RUN echo "DEVOPS=$DEVOPS" > /var/www/html/index.html
CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]

EXPOSE 80
