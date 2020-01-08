---
title: blog-env
date: 2019-09-08 15:22:37
cover:
tags:
---


| [NodeJS 官网](https://nodejs.org) 
| [yarn 官网](https://yarnpkg.com) 
| [git 官网](https://git-scm.com/) 
| [VScode 官网](https://code.visualstudio.com/)

```sh
curl https://mirrors.huaweicloud.com/nodejs/v10.16.3/node-v10.16.3-win-x64.zip

https://mirrors.huaweicloud.com/yarn/v1.17.3/yarn-1.17.3.msi
$git='2.23.0';curl ('https://mirrors.huaweicloud.com/git-for-windows/v'+$git+'.windows.1/MinGit-'+$git+'-64-bit.zip') -o ('MinGit-'+$git+'-64-bit.zip')
```

- hexo 

- docusaurus

```sh
yarn global add docusaurus-init
```

1. 安装 node、yarn、git、vscode
1. yarn global add hexo-cli
1. hexo init blog

1. 配置 git 本地配置
1. 配置 github 用户 ssh
1. ssh -T git@github.com
1. 创建`用户名.github.io`仓库
1. git clone `git@github.com:用户名/用户名.github.io.git`
1. 将 blog 中所有文件移动至 `用户名.github.io`文件夹中
1. 配置 config 中的 deploy 参数
1. hexo -d
1. git pull



