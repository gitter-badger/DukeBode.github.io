---
title: Nodejs
date: 2019-08-06 14:16:18
cover:
tags:
- node
- yarn
- npm
---

[官网](https://nodejs.org/)

## 切换 npm 源

Node 的官方模块仓库网速太慢，模块仓库需要切换到阿里的源。

不安装 cnpm 只用淘宝镜像，设置 npm 的镜像：

```sh
npm config set registry https://registry.npm.taobao.org/
```

执行下面的命令，确认是否切换成功。

```sh
npm config get registry
```

## yarn

[官网](https://yarnpkg.com)

https://mirrors.huaweicloud.com/yarn/v1.19.1/yarn-1.19.1.msi
https://mirrors.huaweicloud.com/yarn/

```sh
# 若经常网络异常，执行此句
yarn config set registry https://registry.npm.taobao.org/ -g
```