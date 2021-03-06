---
title: Python 3.x
date: 2018-11-17 21:29:32
tags: 
- python
- Django
- 框架
---

## Python 3 安装

[官网](https://www.python.org/) | [文档](https://docs.python.org) | [包管理工具 pip](https://pip.pypa.io/)

<!-- more -->

### 源码安装（推荐）

```sh
# 下载安装包
wget https://www.python.org/ftp/python/3.7.1/Python-3.7.1.tgz
# 解压
tar -xzvf Python-3.7.1.tgz
# 切换目录
cd Python-3.7.1
# 生成 makefile 文件
./configure --prefix=/usr/local/Python --enable-optimizations
# 编译安装
make
make install
hash -r
ln -s /usr/local/Python/bin/python3.7 /usr/bin/python3
ln -s /usr/local/Python/bin/pip /usr/bin/pip3
```

### CentOS 软件包方式安装

```sh
# 安装 python3
yum install python36
# 安装 pip3
python36 get-pip.py
```

## 中国地区 pypi 配置
```sh
# 更新 pip 至最新版
pip install -i https://mirrors.huaweicloud.com/repository/pypi/simple pip -U
# 配置华为云镜像源
pip config set global.index-url https://mirrors.huaweicloud.com/repository/pypi/simple
```

## Pip 包管理

[官网](https://pip.pypa.io)

```sh
pip install --upgrade pip
```

## conda 包管理

[官网](https://docs.conda.io/en/latest/)
https://docs.conda.io/en/latest/miniconda.html