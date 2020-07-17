---
title: os-lecture-notes
date: 2020-07-05 21:22:21
tags:
- os
categories:
- [os,os lecture]
description: 操作系统上课笔记
---
## 理论课

## 代码课
### 应用眼中的操作系统
1. _start是链接器真正的入口，而不是main，可以通过ld -e main file.o来指定程序入口。一个C程序的第一条指令位于系统内置的链接器中，链接器会先加载libc，然后再加载目标程序
2. objdump -S看到的源码里面的@plt代表这段代码是动态链接的

## 专题