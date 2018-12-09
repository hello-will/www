# www
www

docker-compose.yml
version: '3'
services:
  www:
    image: www
    hostname: www
    domainname: example.com
    restart: always
    container_name: www
    ports:
      - "80:80"
      - "443:443"
    volumes:
      - ./certs:/etc/nginx/certs
      - ./mysql:/var/lib/mysql
      - ./html:/var/www/html
    environment:
      - DOMAIN_NAME=example.com
