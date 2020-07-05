---
title: Multiple-Entry Testing of Android Applications by Constructing Activity Launching Contexts
date: 2020-07-05 10:25:34
tags:
- mobile
- testing
- icse
categories: 
- paper
description: Multiple-Entry Testing of Android Applications by Constructing Activity Launching Contexts
---

目前遇到的问题：单入口难以检测到复杂的距离entry较远的activity，并且测试不充分


可能的原因：
某些状态的特定组合才能让某个activity出现

想法：找到进入到某个activity的这条path上面的所有需要的条件，并且使得每一个activity的比重都相对公平

静态分析 forward的缺陷在于很难找到所有的出口，因为可能包含一些复杂的操作和因为上下文敏感而无法进行的操作，因此选择backward

符号执行 让所有的activity变得直接可达，然后把对应的inter-component communication  (ICC) message传递过去