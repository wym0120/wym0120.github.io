---
title: "[ISER] [STA] AddressSanitizer: A fast address sanity checker"
categories:
  - paper
date: 2020-09-18 18:24:23
tags: Software Testing and Analysis
description: "Konstantin Serebryany, Derek Bruening, Alexander Potapenko, and Dmitry Vyukov. AddressSanitizer: A fast address sanity checker. USENIX ATC'12"
---

### Abstract
> Memory access bugs, including buffer overflows and uses of freed heap memory, remain a serious problem for programming languages like C and C++. Many memory error detectors exist, but most of them are either slow or detect a limited set of bugs, or both.

> This paper presents AddressSanitizer, a new memory error detector. Our tool finds out-of-bounds accesses to heap, stack, and global objects, as well as use-after-free bugs. It employs a specialized memory allocator and code instrumentation that is simple enough to be implemented in any compiler, binary translation system, or even in hardware.

> AddressSanitizer achieves efficiency without sacrificing comprehensiveness. Its average slowdown is just 73% yet it accurately detects bugs at the point of occurrence. It has found over 300 previously unknown bugs in the Chromium browser and many bugs in other software.

### 总体评价

### Motivation
目前检测边界溢出和访问已释放问题的工具要么不够快要么开销太大（好简单粗暴

### Evalution

### Details