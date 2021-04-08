---
title: "[ISER] [EMSE] Where Do Developers Log? An Empirical Study on Logging Practices in Industry"
categories:
  - paper
date: 2020-08-15 14:44:06
tags: Empirical Software Engineering
description: Where Do Developers Log?  An Empirical Study on Logging Practices in Industry
---

### Abstract
> System logs are widely used in various tasks of software system management. It is crucial to avoid logging too little or toomuch. To achieve so, developers need to make informed decisions on where to log and what to log in their logging practices during development. However, there exists no work on studying such logging practices in industry or helping developers makeinformed decisions. To fill this significant gap, in this paper, wesystematically study the logging practices of developers in industry, with focus on where developers log. We obtain six valuable findings by conducting source code analysis on twolarge industrial systems (2.5M and 10.4M LOC, respectively) at Microsoft. We further validate these findings via aquestionnaire survey with 54 experienced developers in Microsoft. Inaddition, our study demonstrates the high accuracy of up to 90% F-Scorein predicting where to log.

keywords: Logging practice, automatic logging, developer survey


### 总体评价

### Motivation

### Evalution

### Details
#### 研究主要关心的问题
RQ1: 被log的代码片段主要有哪些分类
手动分类的结果：

|类别|特征|开发者们认为的常见程度|
|---|---|---|
|Assertion-check logging| The logging statement is triggered by an Assert statement.|50%|
|Return-value-check logging| The logging statement is contained in a clause following a branch statement (e.g., if, if-else, switch), while one or more function return values are checked in the branchcondition. In addition, the logging statement is not enclosed by any catch block within the cl|63%|
|Exception logging|The logging statement is contained either in a catch block or right before a throw statement.|80%|
|Logic-branch logging| The logging statement is contained in a clause following a branch statement (e.g., if, if-else, switch), while the branch con- dition does not contain any check on a functionreturn value|67%|
|Observing-point logging|All the other situations that exclude the above categories|81%|

> 总的来说可以归纳成两个分类，一种是用来记录意料之外的异常情况，一种是用来记录关键的执行点。而巧合的是在对开发者进行的调查中，Exception logging 和 Observing-point logging 也被认为是最常见的两种 log

通过工具自动分类的结果：

RQ2: 代码会因为哪些原因被log

RQ3: 是否存在某种途径能够自动决定log的位置