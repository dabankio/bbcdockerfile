#需自行在ubuntu环境下打包好 bigbang 并复制到 ./build目录下

FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive
ENV HOME=/home/big

VOLUME ["${HOME}"]
COPY entrypoint.sh /sbin/
COPY bigbang.conf boot.sh /
COPY build/bigbang /usr/bin/
RUN chmod 755 /sbin/entrypoint.sh \
    && chmod +x /boot.sh \
    && mkdir ${HOME}/.bigbang \
    && cp /bigbang.conf ${HOME}/.bigbang \
    && ln -s /usr/bin/bigbang /usr/bin/bigbang-cli \
    && echo bigbang-cli -rpcport=9550 -rpcuser=bbc -rpcpassword=123 > /usr/bin/cli \
    && chmod +x /usr/bin/cli
EXPOSE 9960 9550
ENTRYPOINT ["/sbin/entrypoint.sh"]
CMD ["/boot.sh"]