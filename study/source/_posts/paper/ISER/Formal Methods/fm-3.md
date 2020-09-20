---
title: "[ISER] [FM] KLEE : Unassisted and Automatic Generation of High-Coverage Tests for Complex Systems Programs"
categories:
  - paper
date: 2020-07-25 09:51:29
tags: Formal Methods
description: "Cristian Cadar, Daniel Dunbar, and Dawson Engler. KLEE: Unassisted and automatic generation of high-coverage tests for complex systems programs. OSDI'08"
---

### Abstract
> We present a new symbolic execution tool, KLEE, capable of automatically generating tests that achievehigh coverage on a diverse set of complex andenvironmentally-intensive programs. We used KLEE tothoroughly check all 89 standalone programs in theGNU COREUTILS utility suite, which form the coreuser-level environment installed on millions of Unix systems, and arguably are the single most heavily tested setof open-source programs in existence. KLEE-generatedtests achieve high line coverage — on average over 90%per tool (median: over 94%) — and significantly beatthe coverage of the developers’ own hand-written testsuite. When we did the same for 75 equivalent tools inthe BUSYBOX embedded system suite, results were evenbetter, including 100% coverage on 31 of them.We also used KLEE as a bug finding tool, applying it to 452 applications (over 430K total lines of code), whereit found 56 serious bugs, including three in COREUTILSthat had been missed for over 15 years. Finally, we usedKLEE to crosscheck purportedly identical BUSYBOX andCOREUTILS utilities, finding functional correctness errors and a myriad of inconsistencies.


keywords:

### 总体评价
#### Contribution 
KLEE的优势：
- 适用于大型项目
- 简洁的状态表示
- 启发式搜索算法获得高代码覆盖率
- 简洁直接的与环境交互的方法
  
### Motivation
- 以往工具在大型项目上表现不佳
  - 路径爆炸
  - 与环境交互处理方式不当
### Evalution

### Details
运行原理：
KLEE的核心逻辑是一个解释器循环，它每次都选择一个state去执行并且把执行到的指令进行符号化，直到没有更多的state可以执行或者超过了规定的执行时间

KLEE的设计
symbolic process(state) : register file, stack, heap, pc,path condition

### todo
Evalution部分还没有看，这部分实验很厉害，好好看一下