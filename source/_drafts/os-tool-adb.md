---
title: os-tool-adb
date: 2020-02-25 10:16:49
cover:
tags:
---

<!-- more -->
./adb shell getevent -lt /dev/input/event2
adb shell input | tap | 56 | 54 | # 点击头像


```sh

pm list packages
# 保留数据卸载
pm uninstall -k --user 0 packageName
# 不保留数据卸载
pm uninstall --user 0 packageName
# 禁用 APP
pm disable -k --user 0 packageName
# 恢复 APP
pm enable -k --user 0 packageName
# 点击 x，y
input tap <X> <Y>
# 滑动 x，y 至 x，y，上滑y变小
input swipe 100 500 100 450
# 常亮设置
svc power stayon [true|false|usb|ac|wireless]
# 重启
reboot
```
720 1280

--user 指定用户 id，Android 系统支持多个用户，默认用户只有一个，id=0