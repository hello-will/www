FROM debian:stretch-slim

ENV DOMAIN_NAME=example.com

COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 80 443
