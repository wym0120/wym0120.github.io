---
title: C-tools-cheat-sheet
date: 2020-07-08 23:31:54
tags:
- tools
- C
categories:
- tools
description: C语言虐我千百遍
---
## gdb

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

## gcc

### 编译选项

#### m系列
|选项|含义|注意事项|
|---|---|---|
|mmmx  msse  msse2  msse3  mssse3  msse4  msse4a  msse4.1  msse4.2  mavx  mavx2  mavx512f  mavx512pf  mavx512er  mavx512cd  mavx512vl  mavx512bw  mavx512dq  mavx512ifma  mavx512vbmi  msha  maes  mpclmul  mclflushopt  mfsgsbase  mrdrnd   mf16c  mfma  mfma4  mprefetchwt1  mxop  mlwp  m3dnow  m3dnowa  mpopcnt  mabm  mbmi  mbmi2  mlzcnt  mfxsr  mxsave  mxsaveopt  mxsavec  mxsaves  mrtm  mtbm  mmpx  mmwaitx  mclzero  mpku| 开启对应的指令集||
|m64 m32|编译到对应的指令集||

#### f系列
|选项|含义|注意事项|
|---|---|---|
|fpic|生成位置无关代码|有对应fno-pic|
|fno-stack-protector|不开启栈保护||
|fno-builtin|关闭内建函数|内建函数通常能够加快执行效率，减少代码，但是不利于调试|
|fno-toplevel-reorder|取消对函数的重排序，严格按照源码中的顺序排列||
|freestanding|表示没有任何运行库的环境||

#### W系列
|选项|含义|注意事项|
|---|---|---|
|Wno-main|不对异常的main函数进行警告||
|-Wl,--verbose|将,后面的参数传递给ld，用于输出编译信息||

#### M系列
|选项|含义|注意事项|
|---|---|---|
||||

## ar

## ld
