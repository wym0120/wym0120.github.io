---
title: 程序设计语言的形式语义课堂笔记
date: 2020-09-10 07:51:07
tags:
categories: FSPL 
description: Formal Semantics of Programming Languauges notes
---
 
### Introduction

- PL的核心：构建抽象，以程序语言为中心去解决计算问题
- PL能做到的是什么
  - 用形式化的方式去描述语言的结构和程序的作用
  - 用一种更严格的方法的方法去证明程序的正确性 more than testing 
  
如何定义语言的行为
operational / denotational / axiomatic semantics(操作 / 指称 / 公理语义)

数学基础
1. lambda 演算
- functional programming 函数式
- imperative programming 命令式
- declarative programming 声明式

### coq
inductive data type

constructor 是用来构造的而不是计算的
> Think about standard decimal numerals: the numeral [1] is not a computation; it's a piece of data. When we write [111] to mean the number one hundred and eleven, we are using [1] three times, to write down a concrete representation of a number.

如果对一个函数的传参不完整那么它还是一个函数，直到所有的参数都被获取到才会变成值