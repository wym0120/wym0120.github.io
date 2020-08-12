---
title: Model Checking for Programming Languages using VeriSoft
categories:
  - paper
date: 2020-07-19 13:58:55
tags:
description: Model Checking for Programming Languages using VeriSoft
---

### Abstract
> Verication by state-space exploration, also often referred to as \model checking", is an eective methodfor analyzing the correctness of concurrent reactive systems (e.g., communication protocols). Unfortunately,existing model-checking techniques are restricted to theverication of properties of models, i.e., abstractions, ofconcurrent systems.In this paper, we discuss how model checking can beextended to deal directly with \actual" descriptions ofconcurrent systems, e.g., implementations of communication protocols written in programming languages suchas C or C++. We then introduce a new search technique that is suitable for exploring the state spaces ofsuch systems. This algorithm has been implemented inVeriSoft, a tool for systematically exploring the statespaces of systems composed of several concurrent processes executing arbitrary C code. As an example ofapplication, we describe how VeriSoft successfully dis-covered an error in a 2500-line C program controllingrobots operating in an unpredictable environment.

keywords: model-checking

### 总体评价

### Motivation
1. 并发系统中非model-checking的方法找到难以检查或复现的error
2. 过去的一些工具都是建立在“系统的每一个状态都能够很容易的被一个唯一的标示符表示”的这一假设上。然而实际上，一个进程的状态是由它可以访问的并且可能会改变它本身的状态的数据组成的（简单点说例如寄存器和内存），这是不可能由一个简单的string来表示的，因此在执行中会遇到各种各样的问题
3. 原有方法的状态探索的策略会在面对状态空间膨胀时缺乏一个有效的机制能减少无效探索

### Evalution
设计了一个叫做测试verisoft的工具测试了一个2500行的C程序。
主要检查四类问题：deadlock assertion divergence（某个visible operation超时） livelock（某个时刻资源必须大于n）
结果：成功的在几分钟内找到了29个transition的组合会导致divergence问题

我认为Evaluation不是这篇文章最大的亮点，但是这个确实证明了文中提出的算法能够在一个复杂的由现代语言编写的中小型规模项目中work，并且时间是可以完全可以接受的（几分钟）

### Details
#### 什么是model checking
model checking是一种用于验证并发系统正确性的方法（后来分布式系统也可以认为是一种并发系统），而广义上讲，所有通过自动化状态空间探索来验证程序的方法都被成为model checking。它使用一种modeling language来描述程序的状态空间，并以此为基础来检查一些特定的属性，例如死锁、assertion。model checking主要用于寻找难以检测和复现的error

#### 缩减状态空间
step1 定义一系列的形式化的语义（具体见liquidtext笔记）
step2 使用所有可达的的全局状态以及这些状态之间的transition来描述整个系统的行为，在这里就缩减了大量的无关状态。在一个全局状态上，要么blocking，要么就能够通过有限的进程内的执行达到下一个全局状态
step3 通过优化的算法来减少无效的状态访问

理论依据（证明略）
 > Consider a concurrent system as dened above, and let AG denote its state space. Then, all the dead locks that are reachable after the initialization of the system are global states, and are therefore in AG. Moreover, if there exists a state reachable after the initialization of the system where an assertion is violated, then there exists a global state in AG where the same assertion is violated.

> 知乎上的一个解释
> 针对无死锁这个性质对程序做model checking。 那么它是怎么减少状态空间的大小的呢？ 无死锁这个性质显然针对的是多线程程序。 对于多线程程序，每个线程都有自己的局部状态(如local stack) 以及共享的全局状态(比如全局变量)。它们合并起来就是整个程序状态。 产生死锁就是指在某个程序状态上，每个线程的局部状态都不能再前进了。 设想一下，每个线程在执行指令的过程中要么改变的是自己的局部状态， 要么改变的是全局状态来和其它线程通信。我们把它们分别称作局部指令与全局指令。 两条全局指令之间的那些局部指令要么是有限的，要么会陷入某种等待。 所以当没有死锁的时候，即各个线程没有同时陷入等待的时候， 经过有限步局部指令，全局状态必然会因为全局指令的执行而不断改变。 反之，如果产生死锁，全局状态就不能再前进了。 因此，我们只要无视局部状态，仅观察全局状态能否前进就可以确定有没有死锁产生了。 程序的状态空间这样就被我们缩减到了全局状态空间

#### 优化探索策略
原来的探索策略
```c
Initialize:Set is empty; H is empty;
    add s0 to Set;
Loop: while Set != empty ; do {
    take s out of Set;
    if s is NOT already in H then{
      enter s in H;
      T = enabled(s);
      for all t in T do{
        s' = succ(s) after t;
        add s' to Set;
      }
    }
  }
```

问题1：状态表示过于简单；状态庞大且复杂难以存储 -> 依然进行探索但是不存放状态，而是存放一个有上限的transion记录
问题2：会产生大量的重入 -> 根据依赖关系选择transition，并且记录已经达到过的transition


优化后的算法
```c
Initialize: Stack is empty;
Search() {
    DFS(∅);
  }
DFS(set: Sleep) {
    T = Persistent Set()\Sleep;
    while T 6= ; do {
      take t out of T ;
      push (t) onto Stack;
      Execute(t);
      DFS({t' ∈ Sleep | t' and t are independent});
      pop t from Stack;
      Undo(t);
      Sleep = Sleep ∪ {t};
      };
  }
```
理论依据（证明略）
> Consider a concurrent system as dened in Section 2, and let AG denote its state space. Assume AG is nite and acyclic. Then, al l the dead locks in AG are visited by Algorithm 2（上面的这个算法）. Moreover, if there exists a global state in AG where an assertion is violated, then there exists a global state visited by Algorithm 2 where the same assertion is violated.

产生重入的两个原因
- From the initial state, the exploration of any interleaving of a single finite partial ordering of transitions of the system always leads to the same state.This state will thus be visited several times because of all these interleavings.
- From the initial state, explorations of differentnite partial orderings of transitions may lead to the same state.

#### todo
算法的直觉还是没能很好的get，再讨论一下