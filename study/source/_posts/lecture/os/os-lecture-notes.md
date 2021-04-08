---
title: "[课堂笔记] 操作系统"
date: 2020-07-05 21:22:21
tags:
- os
- lecture notes
categories:
- [os,os lecture]
description: 操作系统课堂笔记
---
## 理论课

## 代码课
### 应用眼中的操作系统
1. _start是链接器真正的入口，而不是main，可以通过ld -e main file.o来指定程序入口。一个C程序的第一条指令位于系统内置的链接器中，链接器会先加载libc，然后再加载目标程序
2. objdump -S看到的源码里面的@plt代表这段代码是动态链接的

### C4 系统中的进程

### C5 链接与加载
#### 静态链接与符号重定位
ld链接器的本质就是把各种.o文件中的各种段复制到二进制文件中并且进行重定位

#### 动态链接
必须的几个条件：
- 位置无关代码，全部通过pc相对寻址
- 引用数据或者代码的时候如果这是一个未知的符号，那么必须去查表来获得地址

查表这个行为就是一个call *libxxx.tab\[target\]。(在不实现延迟解析的时候)
如果是需要动态加载的程序，那么gdb strati停在的第一条指令其实是在libld中的。并且libld的代码会被映射到程序的地址空间中，由它来按照依赖的倒序依次加载其余的动态库。
在libld加载完target之后，libld会调用_dl_runtime_resolve来重填libxxx.tab\[target\]这一项

在ELF文件中实际上这个表就叫做GOT，global offset table，库函数和可执行文件都有GOT。
所以用file查看可执行文件和一个共享库的时候给出的结果都是一个shared object

GOT 中储存的数据
- GOT[0]: .dynamic 节的地址
- GOT[1]: link map , 用于遍历依赖的动态链接库
- GOT[2]: _dl_runtime_resolve 的地址 , call *GOT[2] 可以完成符号解析
- GOT[i]: 程序所需的动态符号地址 (printf, ...)

**lazy symbol resolve黑科技看视频回看**

## 专题