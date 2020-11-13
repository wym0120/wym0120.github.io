---
title: "[课堂笔记] 数据挖掘和知识发现"
date: 2020-09-18 18:42:19
tags: notes
categories: [notes]
description: 数据挖掘和知识发现课堂笔记
---
## Introduction

### Knowledge Hierarchy
Data : 单纯的数据流
Information : 数据的集合，变成了一个事实 
knowledge : 如何解释信息
Wisdom : 如何利用知识来进行决策

knowledge is something meaningful drawn from data
knowledge is just what is useful to you 

### data mining 
Definition : Extarction of interesting (non-trivial implicit previously unknown and potentially useful) infomation or patterns from data in large database

features :
- 其实并不需要一个完全普适的一些知识,也就是所谓的interesting
- 数据挖掘具有一定的时效性，只在数据来源上面成立
- 挖掘出来的信息既不应该是已有数据中的信息，也不应该没有数据支撑
- 必须要大规模的数据
- 和需要分析的问题相关的数据需要尽量完整
- 数据挖掘通过人的检查之后产生knowledge

### step of a KDD process
见ppt
数据选择：选择什么是相关的什么是不相关的

### Data Mining Functinoalities
Concept description 主要是用来描述被划分出来的集合中到底什么才是能区分两种集合的关键特征
Association （correlation and causality）
Classification and Predication
Cluster analysis
outlier analysis 异常分析
Trend and evolution analysis 
other pattern-directed or statistical analyses

## 第二章
### What is Warehouse

### From Tables And Spreadsheets To Data Cubes
围绕着一组数据，往往有很多的其他数据项来为它服务，显示它的上下文。这种信息在操作型的应用中往往是缺失的。

### Further development of data cube technology
部分物化：本质上就是提前预测一些会被查询到的数据结果并且计算好，如果出现了预期之外的需求，可以拿这部分的数据再重新计算，相当于从子集中取出更小的子集