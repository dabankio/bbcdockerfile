# bbcdockerfile
BBC Dockerfile

存放用于BBC测试的 Dockerfile


## bbccore
单点镜像，启动后运行1个节点，

包含区别于master的特殊配置：
- 创世块难度10，区块pow难度固定在8bit 以缩短出块周期
- v2多签失效高度测试链调整到高度 2


## bbcdpos
dpos镜像，启动后运行3个节点，rpc分别在9902 10902 11902端口，启动dpos 并创建1个分支，节点内的地址均使用123作为解锁密码