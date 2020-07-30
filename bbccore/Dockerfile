#需自行在ubuntu环境下打包好 bigbang 并复制到 ./build目录下

FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive
ENV HOME=/home/big

VOLUME ["${HOME}"]
COPY entrypoint.sh /sbin/
RUN chmod 755 /sbin/entrypoint.sh
COPY build/bigbang /usr/bin/
RUN ln -s /usr/bin/bigbang /usr/bin/bigbang-cli
COPY bigbang.conf boot.sh /
RUN chmod +x /boot.sh
EXPOSE 9960 9550
ENTRYPOINT ["/sbin/entrypoint.sh"]
CMD ["/boot.sh"]