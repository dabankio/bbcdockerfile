#需自行在ubuntu环境下打包好 bigbang 并复制到 ./build目录下

FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive
ENV HOME=/root

VOLUME ["${HOME}"]
COPY entrypoint.sh /sbin/
COPY mkf.conf boot.sh /
COPY build/mkf /usr/bin/
RUN chmod 755 /sbin/entrypoint.sh \
    && chmod +x /boot.sh \
    && mkdir ${HOME}/.mkf \
    && cp /mkf.conf ${HOME}/.mkf \
    && ln -s /usr/bin/mkf /usr/bin/mkf-cli \
    && echo mkf-cli -rpcport=9550 -rpcuser=mkf -rpcpassword=123 > /usr/bin/cli \
    && chmod +x /usr/bin/cli
EXPOSE 9960 9550
ENTRYPOINT ["/sbin/entrypoint.sh"]
CMD ["/boot.sh"]