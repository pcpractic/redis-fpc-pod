FROM redis

USER root

COPY redis.conf /data/redis.conf
CMD [ "redis-server", "/data/redis.conf", "--protected-mode no"]
