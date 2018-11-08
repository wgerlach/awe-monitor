
# docker build -t mgrast/awe-monitor .

# apache: docker run -ti --rm --name awe-monitor -p 8085:80 -v `pwd`/config.js:/usr/local/apache2/htdocs/js/config.js mgrast/awe-monitor
# nginx:  docker run -ti --rm --name awe-monitor -p 8085:80 -v `pwd`/config.js:/usr/share/nginx/html/js/config.js mgrast/awe-monitor


FROM httpd:2.4-alpine

RUN apk update ; apk add \
	perl-cgi \
	perl-json \
	perl-libwww


# www
COPY www/ /usr/local/apache2/htdocs/

# config
COPY httpd.conf /usr/local/apache2/conf

# cgi
COPY ./cgi-bin/authclient.cgi /usr/local/apache2/cgi-bin/

# lib
COPY ./lib/AuthConfig.pm /usr/local/lib/perl5/site_perl/



# nginx, but does not support cgi (required for auth client)
#FROM nginx:1.13-alpine
#COPY . /usr/share/nginx/html



