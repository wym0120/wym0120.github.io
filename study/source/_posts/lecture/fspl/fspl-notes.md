---
title: "[课堂笔记] 程序设计语言的形式语义"
date: 2020-09-10 07:51:07
tags: lecture notes
categories: FSPL 
description: 程序设计语言的形式语义课堂笔记
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

### lambda calculus
一般一个lambda的程序就叫做一个term（项）或者叫做lambda表达式
todo：BNF范式

pure lambda calculus：(Terms) M,N ::= x | lambdax.M | M N
1. x: 默认用xyz等小写变量来表示程序变量
2. lambdax.M ： lambda抽象，例如 int f (int x)return x -> lambdax.x
3. M N :lambda应用，例如 int f(int x){return x} ; f(3) -> (lambdax.x) 3
4. 本身不接受3作为一个参数，但是可以用 | n扩展语义，还可以引入一些整数计算

表达式简化： 每一个lambda尽可能管到最右边
函数应用是左结合的
一个lambda abstraction中只有一个参数

自由变量，不能随意改名
约束变量，可以改名

求解约束变量的集合
bv(x) = empty
bv(lambdax.M) = {x} ∪ bv(M)
bv(M N) = bv(M) ∪ bv(N)

substitution
(lambdax.M)[N/M] = lambdax.M
原因 （lambdax.M）N -> M[N/x]
这里直接的lambdax.M相当于 (lambdax.(lambdax.M))[N/x]，N代换的是前面的隐藏的x
（相当于代换了形参，但是形参又是可以随便换名字的所以相当于什么都不做）

"->"这个代表这 term x term 上的一个relation
合流性定理：选择一个 ***特定*** 的M' 并且选择 ***特定*** 的策略使得M1，M2都能通过0至多步到达它

两种化简的策略：
normal order reduction：总是选择最左最外的（out-most）redex去做reduction，也就是最优先选择化简function body
applicative order reduction：总是选择最左最内的（inner-most）redex去做reduction，也就是最优先选择化简参数。相比于normal order可能效率更低因为参数不一定会被使用到

---

### Simply-Typed Lambda calculus
一竖一横 $\vdash$ 表示是否能推出来
一竖两横 $\models$ 表示含义

Value v::constants | $\lambda x.M$ | <v...v> | left v | right v
Value无法继续做reduction, Value 也是具备类型的

### Curry-Howard Isomorphism
"命题就是类型，证明就是程序"

如何知道一个类型是非空的，即这个集合中至少存在一个term满足该类型？
根据Curry-Howard同构来替换
Example可以从后往前看，“如果我们要证明这个，那么我们应该首先获得这个前提...”

项的定型过程就是命题的证明过程，因此可以把项本身就做一个证明

STLC只和constructive propositional logic对应
STLC中没有一个closed term能够定型出 𝜌+(𝜌→𝜎)
