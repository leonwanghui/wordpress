FROM ubuntu
MAINTAINER Leon Wang <wanghui71leon@gmail.com>

COPY wordpress /usr/bin/wordpress

RUN chmod +x /usr/bin/wordpress/start.sh

# Define default command.
CMD ["/usr/bin/wordpress/start.sh"]
