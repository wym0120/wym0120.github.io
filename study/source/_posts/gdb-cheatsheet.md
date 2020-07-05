---
title: gdb Cheatsheet
date: 2020-06-30 15:35:41
tags:
- gdb
- tools
- C language
categories:
- [tools]
- [gdb]
description: 让gdb更好用
---
### 常用命令
|指令|常见用法|备注|
|---|---|---|
|starti|从程序第一条指令开始执行||
|bt|打印调用栈||
|!|执行命令|
|info register|查看寄存器|被peda取代|
|info inferiors|查看进程内存空间中有什么|被peda取代|

### 黑科技
|指令|常见用法|备注|
|---|---|---|
|target recode-full|程序执行之后开始记录执行||
|record stop|结束记录||
|reverse step/revers-stepi|时间旅行调试|再去看看gdb手册|
