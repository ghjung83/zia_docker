FROM ubuntu:16.04
ENV DEBIAN_FRONTEND noninteractive
MAINTAINER ghjung <jwindd@naver.com>
RUN apt-get update && apt-get install -y nginx
RUN echo "\ndaemon off," >> /etc/nginx/nginx.conf
RUN chown -R www-data:www-data /var/lib/nginx
VOLUME ["/data"."/etc/nginx/site-enabled","/var/log/nginx"]
WORKDIR /etc/nginx
CMD ["nginx"]
EXPOSE 80
EXPOSE 443
