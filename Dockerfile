# Redis with a custom conf file
# enabling key space notification
FROM redis:6.0.1
COPY redis.conf /usr/local/etc/redis/redis.conf
CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]
