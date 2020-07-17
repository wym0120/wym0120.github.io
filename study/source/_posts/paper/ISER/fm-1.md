---
title: Symbolic execution and program testing
categories:
  paper
date: 2020-07-17 22:31:21
tags:
description: Symbolic execution and program testing
---

### Abstract
> This paper describes the symbolic execution of programs. Instead of supplying the normal inputs to a program (e.g. numbers) one supplies symbols representing arbitrary values. The execution proceeds as in a normal execution except that values may he symbolic formulas over the input symbols. The difficult, yet interesting issues arise during the symbolic execution of conditional branch type statements. A particular system called EFFIGY which provides symbolic execution for program testing and debugging is also described, it interpretively executes programs written in a simple PL/I style programming language. It includes many standard debugging features, the ability to manage and to prove things about symbolic expressions, a simple program testing manager, and a program verifier. A brief discussion of the relationship between symbolic execution and program proving is also included. 

Key Words and Phrases: symbolic execution, program testing, program debugging, program proving, program verification, symbolic interpretation 



### 总体评价

### Motivation
1. 不是所有的程序都有一个formal specification（类似于输入、输出、约束条件的集合），但是仍希望能够很好的验证它
2. 给定的输入测试正确不能说明其余未测试到的地方也正确
3. 尽可能减少测试成本



### Evalution

### Details
符号执行的天生缺陷 -> 需要使用一个理想模型来进行符号执行
1. 无法考虑实际硬件的情况，例如寄存器个数，寄存器能够存放的数值范围
2. 一些程序的执行树是无穷多的
3. 即便是再简单合适的语言对于if语句的符号执行都需要理论证明，而这个理论证明理论上不可能
   
#### 符号执行是什么？
符号执行是在保证了原有的语义都不被修改的基础上进行扩充，唯一可以引入符号执行的时机是将他们作为程序的输入

#### 如何定义符号执行？
input ：输入{a1,a2,a3...}
pc ：path condition 关于输入集合{ai}的boolean表达式，并且绝对不会包含程序的变量。初始值为true
q ：具体表达式

执行：对某一个if语句的一次执行情况进行归纳，而不针对这个if语句
nonforking ：所有的输入都能够要么满足pc，要么不满足pc，不会两者都不满足
forking ：pc和!pc都不满足，需要把当前的if语句的条件加到pc后面更新pc

#### 执行树