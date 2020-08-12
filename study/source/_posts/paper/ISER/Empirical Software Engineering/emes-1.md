---
title: Learning from Mistakes — A Comprehensive Study on Real World Concurrency Bug Characteristics
categories:
  - paper
date: 2020-08-04 15:55:42
tags: EMES
description: Learning from Mistakes — A Comprehensive Study on Real World Concurrency Bug Characteristics


---

### Abstract
> The reality of multi-core hardware has made concurrent programs pervasive. Unfortunately, writing correct concurrent programs is difficult. Addressing this challenge requires advances in multiple directions, including concurrency bug detection, concurrent pro gram testing, concurrent programming model design, etc. Design ing effective techniques in all these directions will significantly benefit from a deep understanding of real world concurrency bug characteristics.

> This paper provides the first (to the best of our knowledge) comprehensive real world concurrency bug characteristic study. Specifically, we have carefully examined concurrency bug patterns, manifestation, and fix strategies of 105 randomly selected real worldconcurrency bugs from 4 representative server and client opensource applications (MySQL, Apache, Mozilla and OpenOffice).Our study reveals several interesting findings and provides useful guidance for concurrency bug detection, testing, and concurrentprogramming language design.

> Some of our findings are as follows: (1) Around one third ofthe examined non-deadlock concurrency bugs are caused by violation to programmers’ order intentions, which may not be easilyexpressed via synchronization primitives like locks and transactional memories; (2) Around 34% of the examined non-deadlockconcurrency bugs involve multiple variables, which are not welladdressed by existing bug detection tools; (3) About 92% of theexamined concurrency bugs can be reliably triggered by enforcingcertain orders among no more than 4 memory accesses. This indicates that testing concurrent programs can target at exploring possible orders among every small groups of memory accesses, insteadof among all memory accesses; (4) About 73% of the examinednon-deadlock concurrency bugs were not fixed by simply addingor changing locks, and many of the fixes were not correct at thefirst try, indicating the difficulty of reasoning concurrent executionby programmers.

keywords: concurrent program, concurrency bug, bug characteristics


### 总体评价

### Motivation

### Evalution
成熟且庞大的开源项目，具备不同的并发的需求 MySQL Apache Mozilla OpenOffice

从bug database中根据关键词选取至少包含一个关键词的bug并从中抽取约500个比较详尽的（包含了引起bug的原因、源码、如何解决bug）信息，并且这些bug都是由于开发人员引起的。

最终获取到了105个并发bug
### Details
#### BUG pattern 研究
产生原因：(1)编码时违反原子性，多个线程访问了同一个变量 (2)对线程之间的执行先后顺序存在错误的假设

#### BUG mainfestation 研究


#### 可能影响可信度的因素
- 随机选取的bug，不够全面
- 选择的应用不一定具备足够的代表性