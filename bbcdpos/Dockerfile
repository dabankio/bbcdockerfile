# 此镜像需要本地构建后拷贝到镜像内,只能在linux下进行源码构建
# 将BigLuaShell *.lua bigbang bigbang-cli 拷贝到镜像内部, bigbang需要对应的分支（fork-check-test）构建
# 启动时创建3个节点的bbc集群，开始 dpos, 并创建1个fork
# 暴露9902 10902 11902 3个RPC 端口，无帐号密码
# 构建镜像需要 ./build 目录下有bigbang bigbang-cli bigluashell .bigluashell/*.lua
FROM ubuntu:18.04
ENV DEBIAN_FRONTEND noninteractive
ENV HOME=/home/big

RUN  sed -i s@/archive.ubuntu.com/@/mirrors.163.com/@g /etc/apt/sources.list && apt-get update \
  && apt-get install -yq openssl libssl1.0-dev libreadline-dev --no-install-recommends


VOLUME ["${HOME}"]
COPY entrypoint.sh /sbin/
RUN chmod 755 /sbin/entrypoint.sh
COPY build/bigbang build/bigluashell /usr/bin/
RUN ln -s /usr/bin/bigbang /usr/bin/bigbang-cli
COPY bigbang.conf /bigbang.conf
COPY build/.bigluashell /.bigluashell
COPY run.sh /run.sh
RUN chmod +x /run.sh
EXPOSE 9902 10902 11902
ENTRYPOINT ["/sbin/entrypoint.sh"]
CMD ["/run.sh"]