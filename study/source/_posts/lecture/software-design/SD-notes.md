---
title: "[课堂笔记] 高级软件设计"
date: 2020-11-12 14:33:15
tags: lecture notes
categories: Designing
description: 软件设计课堂笔记 & 复习
---

## 基本概念
1. 设计模式的定义
```
在软件工程中，设计模式是一种在特定上下文中应对反复出现的问题的可重用的通用的解决方案
```

2. 设计模式的分类
![](https://mignuw-private-blog.oss-cn-shanghai.aliyuncs.com/img/20201209212805.png)


## 模式类图
### 策略模式
![](https://mignuw-private-blog.oss-cn-shanghai.aliyuncs.com/img/20201209215200.png)
### 状态模式
![](https://mignuw-private-blog.oss-cn-shanghai.aliyuncs.com/img/20201209215132.png)
### 观察者模式
![](https://mignuw-private-blog.oss-cn-shanghai.aliyuncs.com/img/20201209215105.png)
### 装饰者模式
![](https://mignuw-private-blog.oss-cn-shanghai.aliyuncs.com/img/20201209215537.png)
### 工厂方法模式
![](https://mignuw-private-blog.oss-cn-shanghai.aliyuncs.com/img/20201209215328.png)
### 抽象工厂模式
![](https://mignuw-private-blog.oss-cn-shanghai.aliyuncs.com/img/20201209215302.png)
### 命令模式
![](https://mignuw-private-blog.oss-cn-shanghai.aliyuncs.com/img/20201209215002.png)
### 适配器模式
![](https://mignuw-private-blog.oss-cn-shanghai.aliyuncs.com/img/20201209215450.png)
### 外观模式
![](https://mignuw-private-blog.oss-cn-shanghai.aliyuncs.com/img/20201209215602.png)
### 模版模式
![](https://mignuw-private-blog.oss-cn-shanghai.aliyuncs.com/img/20201209215225.png)
### 迭代器模式
![](https://mignuw-private-blog.oss-cn-shanghai.aliyuncs.com/img/20201209215659.png)
### 组合模式
![](https://mignuw-private-blog.oss-cn-shanghai.aliyuncs.com/img/20201209215511.png)
### 单例模式
![](https://mignuw-private-blog.oss-cn-shanghai.aliyuncs.com/img/20201209215353.png)
### 代理模式
![](https://mignuw-private-blog.oss-cn-shanghai.aliyuncs.com/img/20201209215633.png)

## 题目
### 模式体现什么设计原则

### 意图汇总
|模式|意图|
|---|---|
|策略|定义一系列算法，封装每个算法，并使它们可互换。策略允许算法独立于使用它的客户机而变化。|
|状态|允许对象在内部状态发生改变时改变它的行为|
|观察者|定义对象间的一种一对多的依赖关系，当一个对象的状态发生改变时，所有依赖于它的对象都得到通知并被自动更新|
|装饰者|允许向一个现有的对象添加新的功能，同时又不改变其结构|
|工厂|定义一个创建对象的接口，让其子类自己决定实例化哪一个工厂类，工厂模式使其创建过程延迟到子类进行|
|抽象工厂|提供一个创建一系列相关或相互依赖对象的接口，而无需指定它们具体的类|
|命令|将一个请求封装成一个对象，从而使您可以用不同的请求对客户进行参数化|
|适配器|将一个类的接口转换成客户希望的另外一个接口|
|外观|为高层模块提供一个一致的接口访问多个复杂的子系统|
|模版|定义一个操作中的算法的骨架，而将一些步骤延迟到子类中。模板方法使得子类可以不改变一个算法的结构即可重定义该算法的某些特定步骤|
|迭代器|提供一种方法顺序访问一个聚合对象中各个元素, 而又无须暴露该对象的内部表示|
|组合|将对象组合成树形结构以表示"部分-整体"的层次结构。组合模式使得用户对单个对象和组合对象的使用具有一致性|
|单例|保证一个类仅有一个实例，并提供一个访问它的全局访问点|
|代理|为其他对象提供一种代理以控制对这个对象的访问|

--- 

### 设计原则

#### Principles
1. Encapsulate what varies. 
2. Favor composition over inheritance. 
3. Program to interfaces, not implementations. 
4. Strive for loosely coupled designs between objects that interact. 
5. The Open-Closed Principle ：Classes should be open for extension, but closed for modification 
6. Dependency Inversion Principle ：Depend upon abstractions. Do not depend upon concrete classes. 
7. The Hollywood Principle ：Don’t call me, we’ll call you 
8. Single Responsibility ：A class should have only one reason to change 
9. Principle of Least Knowledge ：talk only to your immediate friends 

⚠️以下分类不一定完全正确仅代表个人观点
![](https://mignuw-private-blog.oss-cn-shanghai.aliyuncs.com/img/20201209232932.png)

#### 思考题
1. 好莱坞原则与依赖倒置的关系
```
依赖倒置原则强调尽可能避免使用具体类，而多使用抽象。而好莱坞原则是让低层组件能够被 hook 进计算并且高层不依赖低层。两者的目的都是结偶，但是依赖倒置更加注重如何在设计中避免依赖
```
2. 好莱坞原则中低层组建不可以调用高层组建中的方法吗？
```
不完全是，低层会调用高层中继承来的方法。好莱坞原则要避免的是高层和低层之间的环形依赖
```
3. 透明的组合模式和安全的组合模式之间的tradeoff
```
透明的组合模式：客户不去了解具体实现，采用一致处理，牺牲安全性
安全的组合模式：先判断再处理，牺牲透明性
```

---

### 不同模式之间的比较
1. 比较策略模式和状态模式
```
- 策略模式是定义一个算法家族，把他们封装起来，使得他们之间可以相互替换
- 状态模式是将一个个状态封装成一个个类，当内部状态发生改变时，改变他们的行为
- 策略模式和状态模式的类图几乎一样，策略模式中，客户端知道具体的策略有哪些，客户端能够通过setStrategy方法来动态的设置具体使用哪个策略，状态模式中，客户端不知道内部状态是怎么变化的，状态模式通过状态转移来组合State对象，最后把行为呈现出来
```
1. 比较策略模式和模版方法模式
```
- 策略模式和模版方法模式的共同点是都封装算法
- 策略模式是定义算法家族，让他们之间可以相互替换，模版方法是针对一个算法流程，某个步骤的具体细节交给子类去实现。策略模式可以改变算法流程，使一个个步骤可以相互替换，模版方法模式算法流程是固定的
- 策略模式使用组合来实现，模版方法模式使用继承来实现
```
1. 比较适配器模式、外观模式、装饰者模式的意图
```
- 适配器模式是把一个类的接口转换成客户期望的接口，让原本接口不兼容的类兼容，适配器模式一般用于想要复用某个类的场景；外观模式是封装子系统，提供简单的子系统的入口，同时简化层间调用
- 装饰者模式是动态的给被装饰者添加职责，主要目的是扩展功能
- 对于装饰者和适配器，他们都属于包装模式，装饰者需要满足is-a关系，不管如何包装，都有共同的父类，而适配器主要解决兼容问题，不一定要统一父类
```
1. 比较模版方法模式和工厂模式
```
工厂模式是模版方法的特殊实现，工厂里面的创建对象，就相当于只有一个步骤的模版方法模式，这个步骤交给子类去实现
```
1. 比较装饰者模式和静态代理模式
```
- 装饰者模式是动态的给组件对象添加“职责”，更多的考虑功能的扩展，而代理模式控制对象
的访问，也能做方法的增强
- 装饰者模式中，客户端可以看到具体的装饰有哪些，而代理模式把对象的具体信息给隐藏了
起来
- 装饰者模式是把原始组件对象传入构造器中，代理模式是创建一个对象的实例
```
