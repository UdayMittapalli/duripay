FROM nginx
MAINTAINER "uday <uday@gmail.com>"
RUN rm -rf /var/www && mkdir /var/www
COPY hello.txt /var/www/
COPY default.conf /etc/nginx/conf.d/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
