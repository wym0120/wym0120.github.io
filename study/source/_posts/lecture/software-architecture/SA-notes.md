---
title: "[Lecture Notes] Software Architecture"
date: 2020-12-17 18:39:11
tags: lecture notes
categories: 
description: 软件体系结构课堂笔记
mathjax: true
---

## Introduction

科学和工程的本质区别：是否有人的参与。工程的本质上是改变这个世界

软件架构两个定义之间的区别与联系：SEI和IEEE的定义基本相同，IEEE更为宽泛，而多的定义是与外部环境的交互以及设计演进的指导原则。

为什么在设计当中需要抽象？

Use Case 会把四个视图结合起来

## chapter1 
正确的设计顺序： constarins -> quality attributes -> functionalty attributes

### Quality Attributes And Tactics
#### Availability
描述 availability -> 使用时间

------------------------------------------------> timeline
↑              ↑           ↑          ↑
failure       detect     correct    restart
Mean time between failures : restart - failure
高可用性：上面的三段时间都尽可能的小 -> 缩短这些时间都可以提高可用性

##### 缩短检测时间：
什么情况下使用ping/echo，什么情况下使用heartbeat?
> ping echo是双向的，heartbeat是单向的
> 尽管heartbeat带宽更小，但是需要一直占用着资源，多用于长时间始终保持连接的，实时的监控
> ping是只有需要的时候才去ping，不会始终占用着资源

volting:用三个detect技术来保持一致，这些detect可以用同样的实现也可以是不同的实现

##### 缩短恢复时间
假设有两台机器，一台是primary / secondary
Active redundancy / passive redundancy / spare
active : 两个都在运行，随时可以切换，两台都进行同样的工作，只是忽略备用的输出
passive : 备用机器定期同步，开着但是不会进行相同的工作
spare : 定期打primary的快照，down了之后在secondary上恢复
这三个时间会逐渐变长（本质是资源换时间）
#### Reliability
