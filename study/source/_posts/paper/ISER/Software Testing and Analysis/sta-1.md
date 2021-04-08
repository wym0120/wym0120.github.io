---
title: "[ISER] [STA] Dynamically discovering likely program invariants to support program evolution"
categories:
  - paper
date: 2020-09-18 18:24:15
tags: Software Testing and Analysis
description: Michael D. Ernst, Jake Cockrell, William G. Griswold, and David Notkin. Dynamically discovering likely program invariants to support program evolution. IEEE Transactions on Software Engineering (TSE), 27(2), 2001
---

### Abstract
> Explicitly stated program invariants can help programmers by identifying program properties that must be preserved when modifying code. In practice, however, these invariants are usually implicit. An alternative to expecting programmers to fully annotate code with invariants is to automatically infer likely invariants from the program itself. This research focuses on dynamic techniques for discovering invariants from execution traces.

> This article reports three results. First, it describes techniques for dynamically discovering invariants,along with an implementation, named Daikon, that embodies these techniques. Second, it reports on theapplication of Daikon to two sets of target programs. In programs from Gries's work on program derivation,the system rediscovered predened invariants. In a C program lacking explicit invariants, the system discovered invariants that assisted a software evolution task. These experiments demonstrate that, at least forsmall programs, invariant inference is both accurate and useful. Third, it analyzes scalability issues such asinvariant detection runtime and accuracy as functions of test suites and program points instrumented.


keywords: Program invariants, formal specication, software evolution, dynamic analysis, execution traces, logical inference, pattern recognition

### 总体评价

### Motivation
不变式在程序开发的过程中是十分重要的，它能够保证程序不会因为修改代码而破坏原有的代码正确性。但是大多数时候不变式都是非显式的，这篇文章就想通过追踪变量值的变化来动态的推导出不变式。

### Evalution

### Details