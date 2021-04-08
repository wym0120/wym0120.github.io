---
title: skills4os
date: 2020-07-05 20:40:45
tags:
- os
- lecture notes
categories:
- [os,os lecture]
description: 操作系统课程上的tip集合
---
### 常用命令
|指令|常见用法|
|---|---|
|file|查看文件信息|
|xxd|查看二进制文件|
|readelf|查看elf文件|
|objdump|查看二进制代码|
|nm|列举出.o文件的符号|
|strings|查看文件中的字符串|

### 使用小技巧
1. Ubuntu Packages网站用来寻找缺少的文件在哪个包里
2. strace xxx > /dev/null 把strace的标准输出重定向到/dev/null，也就是将执行的程序的输出都丢掉（假设程序中使用了printf）
3. make -nB 可以不实际执行编译而是直接输出出来