FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive

RUN cp /etc/apt/sources.list /etc/apt/sources.list.bk && sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list

RUN apt update
RUN apt install -y iputils-ping git wget gcc docker.io docker-compose
RUN wget https://golang.google.cn/dl/go1.16.15.linux-amd64.tar.gz && tar -xvf go1.16.15.linux-amd64.tar.gz -C /usr/local
RUN mkdir -p /root/go/{bin,src}
RUN echo 'export PATH=$PATH:/usr/local/go/bin' >> /root/.profile

RUN echo 'start build'
RUN LC_ALL=C.UTF-8

RUN git config --global http.proxyAuthMethod 'basic'
RUN git config --global http.sslverify false
RUN git config --global https.sslverify false

EXPOSE 8024
# 前台执行apache2
ENTRYPOINT tail -f dev/null