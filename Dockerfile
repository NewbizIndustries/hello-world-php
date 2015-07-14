FROM newbizindustries/php5

ADD ./default /etc/nginx/sites-available/default
ADD ./nginx.conf /etc/nginx/nginx.conf

ADD www /srv/www

EXPOSE 80

CMD service php5-fpm start && nginx