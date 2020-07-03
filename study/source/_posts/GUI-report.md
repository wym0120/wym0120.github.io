---
title: GUI-report
date: 2020-07-02 13:47:28
tags:
- gui
- mobile
categories:
- report 
description: CCF软件前沿进展线上报告会—“看清”和“看懂”Graphical User Interface的那些事
---
## 看清gui widgets 人工智能如何解决这些问题

gui widget detection
- 重点之一是判断bounding box 
- 另一个重点是region分类

gui widget detection目前的困难：
- 数据方面
  - nature scene 
    - 图文并茂
    - 全景检测
  - physical object
    - 各种各样的组件同种之间差距比较大，没有固定的feature很难区别
- 策略问题
  - 目前大多数的策略都是bottom-up，会造成很大噪音 
  - cnn神经网络更适合学习architecture而不是shape
  - gui detection需要更高的识别准确度，而目前一般的识别准度只是要求超过0.5
- 模型选择问题
  
## overall performance

faster Rcnn > deep learning > 传统方法