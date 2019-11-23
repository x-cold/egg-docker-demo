FROM node:8.11.3-alpine

ENV TIME_ZONE=Asia/Shanghai

RUN \
  mkdir -p /usr/src/app \
  && apk add --no-cache tzdata \
  && echo "${TIME_ZONE}" > /etc/timezone \ 
  && ln -sf /usr/share/zoneinfo/${TIME_ZONE} /etc/localtime 

WORKDIR /usr/src/app

# 借助 docker 的分级文件系统，如果 package.json 未发生变化，无需重复安装依赖
COPY package.json /usr/src/app/

RUN npm i --registry=https://registry.npm.taobao.org

COPY . /usr/src/app

# 挂载日志文件到宿主机，用于日志采集和分析
VOLUME /root/logs

EXPOSE 7001

CMD npm start
