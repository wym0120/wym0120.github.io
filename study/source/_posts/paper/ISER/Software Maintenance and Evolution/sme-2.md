---
title: "[ISER] [SME] Simplifying and isolating failure-inducing input"
categories:
  - paper
date: 2020-09-18 18:26:36
tags: Software Maintence and Evolution
description: Andreas Zeller and Ralf Hildebrandt. Simplifying and isolating failure-inducing input. IEEE Transactions on Software Engineering (TSE), 28(2), 2002.
---

### Abstract
> Given some test case, a program fails. Which circumstances of the test case are responsible for the particular failure? The Delta Debugging algorithm generalizes and simplifies some failing test case to a minimal test case that still produces the failure; it also isolates the difference between a passing and a failing test case. 

> In a case study, the Mozilla web browser crashed after 95 user actions. Our prototype implementation automatically simplified the input to 3 relevant user actions. Likewise, it simplified 896 lines of HTML to the single line that caused the failure. The case study required 139 automated test runs, or 35 minutes on a 500 MHz PC.

keywords: Terms—automated debugging, debugging aids, testing tools, combinatorial testing, diagnostics, tracing.


### 总体评价

### Motivation
对于开发者们来说bug report有一个固有的矛盾，他们既希望report能够special且详尽，又希望report能够集中在关键的几个语句上以便定位bug和将类似的问题聚集在一起。这篇文章希望模拟人的思考逻辑通过二分的方法来定位到bug的存在。这篇文章通过ddmin的方法来找到一个最小的能够正好触发bug的集合和一个与它几乎一致但是略微不同的且不能触发bug的集合。来帮助开发者减少debug所消耗的时间。

### Evalution

### Details