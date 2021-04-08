---
title: mobileperf
date: 2020-06-30 15:39:58
tags:
- code 
categories: 
- code
description: a android profiler from alibaba
---

# 需求场景
## 硬件配置差
1. 压测时间长 72小时左右
2. 需要同时测的app比较多


## 优势
1. adb方式兼容性强、侵入性小，不需要考虑保活问题
2. pc端占用资源极少，移动端主要是系统调用

# 源码分析
原作者在博客里已经把几乎所有的关键点都讲了，实际代码中也并没有更多的技术性的细节，和操作系统的交互基本都是对adb shell的封装和对top等指令的调用，以及生成xlsx、csv文件和绘图
博客地址(https://testerhome.com/topics/23449)

|模块|和操作系统交互|
|---|---|
|连接 | adb usb > adb wifi|
|CPU | top指令|
|内存 | dumpsys meminfo|
|FPS | dumpsys SurfaceFlinger/gfxinfo(after 8)|
|网络流 | /proc/net/xt_qtaguid/stats （TrafficStats的底层实现）|
|电量 | dumpsys batteryproperties/dumpsys battery（after）|
|进程数统计 | ls -lt /proc/pid/task|
|其他 | monkey logcat|


# 问题

mobileperf只是做了统计，并且不能知道某个时刻到底做了什么事情，这样的一个工具是如何和其他工具结合起来来定位某个时刻的操作？
> 讨论前的想法： 用录制好的测试序列作为测试，同时记录进行的操作与时间点，在监测结束后通过人工/按某个阈值筛选出可疑的范围，复现当时的操作找出性能问题
这样的做法有两个延伸问题：首先，假设在很久之前的某个操作带来了副作用导致在很后面的一个操作发生了性能问题要如何检查出来？其次，阈值的设置在业界实际中是怎么确定出来的？(作者提到的是用的是线上指标)