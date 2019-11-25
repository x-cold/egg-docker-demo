# docker-demo



## QuickStart

<!-- add docs here for user -->

see [egg docs][egg] for more detail.

### Development

```bash
$ npm i
$ npm run dev
$ open http://localhost:7001/
```

### Deploy

```bash
$ npm start
$ npm stop
```

### npm scripts

- Use `npm run lint` to check code style.
- Use `npm test` to run unit test.
- Use `npm run autod` to auto detect dependencies upgrade, see [autod](https://www.npmjs.com/package/autod) for more detail.


[egg]: https://eggjs.org

### Docker 部署

```bash
# 构建 docker 镜像
docker build -t egg-demo2 .

# 运行容器
docker run -d -p 7001:7001 egg-demo2

# 运行容器并使用 /bin/bash 进行调试
docker run -it egg-demo2 /bin/sh

# 查看所有容器
docker ps -a

# 查看容器详细信息
docker inspect egg-demo2

# 停止容器
docker stop [id]

# 移除容器
docker rm [id]
```