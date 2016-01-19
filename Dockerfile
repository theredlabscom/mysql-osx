FROM mysql
MAINTAINER Erick Rojas <erick@theredlabs.com>
COPY ["newentrypoint.sh", "/newentrypoint.sh"]
RUN chmod 755 /newentrypoint.sh
ENTRYPOINT /newentrypoint.sh