---
title: Python Windows
date: 2019-10-21 20:52:43
cover:
tags:
- python
---

<!-- more -->

### Window 下 Python 多版本问题

- python 2 使用 python
- python 3 使用 py
- python x.y 使用 py -x.y

### 配置 pypi 清华镜像源

```sh
# 更新 pip
pip install -i https://pypi.tuna.tsinghua.edu.cn/simple pip -U
# 配置 pypi 镜像源
pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
```

### 项目虚拟运行环境

```sh
# 指定 python 版本 x.y 创建虚拟环境
py -x.y -m venv env
# 激活环境
.\env\Scripts\activate
# 更新 pip
python -m pip install --upgrade pip
# 退出环境
deactivate
```

### 本地 pypi 服务器

[pypi-server](https://pypi.org/project/pypiserver/)

- 服务器端

```sh
# 安装 pypiserver
pip install pypiserver [passlib，watchdog]
# 创建包目录
mkdir packages
# 启动 pypiserver
pypi-server -p 8080 --fallback-url https://pypi.tuna.tsinghua.edu.cn/simple -d packages packages
```

- 客户端

```sh
pip config set global.index-url http://localhost:8080/simple
```
