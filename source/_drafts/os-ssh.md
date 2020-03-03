---
title: os-ssh
date: 2020-02-24 11:05:35
cover:
tags:
---

The SSH protocol (also referred to as Secure Shell) is a method for secure remote login from one computer to another. It provides several alternative options for strong authentication, and it protects the communications security and integrity with strong encryption. 

<!-- more -->

##  

```sh
# ssh-keygen -t rsa -C "通常为邮箱" -f "私钥文件绝对路径"
```

## 端口转发

参数|功能
-|-
-C | 压缩数据传输
-f | 后台运行
-N | 不执行shell
-L | 本地端口转发
-R | 远程端口转发
-D | 动态端口转发

```
sudo vim /etc/ssh/sshd_config
PasswordAuthentication yes
PermitRootLogin yes
sudo systemctl restart sshd
```

[适用于 Windows 的 OpenSSH 服务器配置 | Microsoft Docs](https://docs.microsoft.com/zh-cn/windows-server/administration/openssh/openssh_keymanagement)