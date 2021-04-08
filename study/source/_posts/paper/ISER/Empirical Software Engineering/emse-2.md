---
title: "[ISER] [EMSE] Understanding integer overflow in C/C++"
categories:
  - paper
date: 2020-08-19 21:19:55
tags: Empirical Software Engineering
description: Will Dietz, Peng Li, John Regehr, and Vikram Adve. Understanding integer overflow in C/C++. ICSE'12
---

### Abstract
> Integer overflow bugs in C and C++ programs are difficult to track down and may lead to fatal errors or exploitable vulner-
abilities. Although a number of tools for finding these bugs exist, the situation is complicated because not all overflows are
bugs. Better tools need to be constructed—but a thorough understanding of the issues behind these errors does not yet exist.
We developed IOC, a dynamic checking tool for integer overflows, and used it to conduct the first detailed empirical study
of the prevalence and patterns of occurrence of integer overflows in C and C++ code. Our results show that intentional uses
of wraparound behaviors are more common than is widely believed; for example, there are over 200 distinct locations in the
SPEC CINT2000 benchmarks where overflow occurs. Although many overflows are intentional, a large number of accidental
overflows also occur. Orthogonal to programmers’ intent, overflows are found in both well-defined and undefined flavors.
Applications executing undefined operations can be, and have been, broken by improvements in compiler optimizations.
Looking beyond SPEC, we found and reported undefined integer overflows in SQLite, PostgreSQL, SafeInt, GNU MPC and
GMP, Firefox, LLVM, Python, BIND, and OpenSSL; many of these have since been fixed.

keywords: integer overflow, integer wraparound, undefined behavior



### 总体评价

### Motivation
C / C++中并非所有的溢出都是bug，有一些是故意为之的，但是目前没有工具能够检测这一点，原因如下：
  - 本身对bit和byte级别的操作在C和C++中都是非常常见的，数学计算与位运算的界限模糊
  - C和C++中对有符号数的规定中包含了UB
  - 开发者容易误用带符号数和无符号数

### Evalution

### Details