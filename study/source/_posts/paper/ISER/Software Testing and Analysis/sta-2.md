---
title: "[ISER] [STA] Bugs as deviant behavior: A general approach to inferring errors in systems code"
categories:
  - paper
date: 20200918 18:24:17
tags: Software Testing and Analysis
description: "Dawson Engler, David Yu Chen, Seth Hallem, Andy Chou, and Benjamin Chelf. Bugs as deviant behavior: A general approach to inferring errors in systems code. SOSP'01"
---

### Abstract
> A major obstacle to finding program errors in a real system is knowing what correctness rules the system must obey. These rules are often undocumented or specified in an ad hoc manner. This paper demonstrates techniques that automatically extract such checking information from the source code itself, rather than the programmer, thereby avoiding the need for a priori knowledge of system rules. 


> The cornerstone of our approach is inferring programmer "beliefs" that we then crosscheck for contra dictions. Beliefs are facts implied by code: a dereference of a pointer, p, implies a belief that p is nonnull, a call to "tmlock(1)" implies that 1 was locked, etc. For be liefs we know the programmer must hold, such as the pointer dereference above, we immediately flag contra dictions as errors. For beliefs that the programmer may hold, we can assume these beliefs hold and use a statistical analysis to rank the resulting errors from most to least likely. For example, a call to "spin_lock" followed once by a call to "spin_tmlock" implies that the programmer may have paired these calls by coincidence.
 
> If the pairing happens 999 out of 1000 times, though, then it is probably a valid belief and the sole deviation a probable error. The key feature of this approach is that it requires no a priori knowledge of truth: if two beliefs contradict, we know that one is an error without knowing what the correct belief is. Conceptually, our checkers extract beliefs by tailor ing rule "templates" to a system  for example, finding all functions that fit the rule template "\<a\> must be paired with < b>." We have developed six checkers that follow this conceptual framework. They find hundreds of bugs in real systems such as Linux and OpenBSD. From our experience, they give a dramatic reduction in the manual effort needed to check a large system. Com pared to our previous work , these template checkers find ten to one hundred times more rule instances and derive properties we found impractical to specify manually.

### 总体评价

### Motivation
这篇文章基于的一个假设是人是很难寻找和归纳出对于一个程序什么是必须遵循的正确的法则，什么是应该遵循的法则。这并不是指人不能总结出一些法则，而是说在编码过程中很难强制机器去遵守。因此，希望能够自动提取出某段特定代码应该有什么样的约束，例如在使用指针的时候指针指向的对象必须非空，例如lock和unlock应该要成对出现。而在静态检查的过程中如果发现代码违背了这些最基本的一些应该遵守的法则，那么就认为是一个可能的错误。
### Evalution

### Details