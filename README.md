# www
www

docker-compose.yml
<pre><code>
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
</code></pre>

创建wm8afterlogic用户和数据库：
<pre><code>
docker-compose exec mail mysql
insert into mysql.user(Host,User,Password) values('localhost','wm8afterlogic',password('wm8afterlogic'));
create database wm8afterlogic;
grant all privileges on wm8afterlogic.* to wm8afterlogic@localhost identified by 'wm8afterlogic';
flush privileges;
exit
</code></pre>
