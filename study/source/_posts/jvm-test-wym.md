---
title: jvm-test-wym
date: 2020-07-03 14:01:12
tags:
- jvm
categories:
- jvm
description: 绝密档案
---
1. 对于一个数组对象int[] arr，什么能够使 "arr instanceof ___"的结果为true
 
1 java.lang.Object
2 java.io.Serializable
3 java.lang.Cloneable
4 java.lang.Runable

A. 123 ✅
B. 134
C. 234
D. 1234

2. 类的生命周期有：加载 -> 验证 -> 准备 -> 解析 -> 初始化 -> 使用 -> 卸载，其中类加载的哪个/哪些阶段的发生顺序不是固定的

A. 初始化
B. 初始化 解析
C. 解析 验证
D. 解析 ✅

3. 使用真实的java指令执行某个类时，假设在目录src下存在一个被修改过的java/lang/Object.class和一个Main.class,并且所有的检验机制都判定其合法，那么以下说法正确的是

A. 除了直接覆盖掉JDK目录对应类这个文件以外，存在一个方法使得自己修改的这个Object类替换掉官方的实现 ✅
B. 无论如何也不可能加载到自己修改过的Object
C. 能加载但是会被官方的覆盖掉
D. 以上均不对

4. 以下代码中执行doSomething方法时调用到的invoke相关指令是？
```java
public class Example {
    public static void main(String[] args) {
        Child c = new Child();
        c.doSomething();
    }
}

class Child extends Parent{

}

class Parent implements B{
    public void doSomething(){}
}

interface A{
    public void doSomething();
}

interface B extends A{

}
```

   A. invokespecial
   B. invokestatic
   C. invokevirtual ✅
   D. invokeinterface
   E. invokedynamic

5. 以下代码中执行doSomething方法时调用到的invoke相关指令是？
```java
public class Example {
    public static void main(String[] args) {
        A c = new Child();
        c.doSomething();
    }
}

class Child extends Parent{

}

class Parent implements B{
    public void doSomething(){}
}

interface A{
    public void doSomething();
}

interface B extends A{

}
```

   A. invokespecial
   B. invokestatic
   C. invokevirtual 
   D. invokeinterface ✅
   E. invokedynamic

6. 以下代码执行结果为
```java
public class E5 {
    public static void main(String[] args) {
        Parent c = new Child();
        c.doSomething();
    }
}

class Child extends Parent{
    public void doSomething(){
        System.out.print("in Child ");
    }
}

class Parent implements A{
    public void doSomething(){
        System.out.print("in Parent ");
    }
}

interface A{
    default void doSomething(){
        System.out.print("in interface A");
    }
}
```

A. in Child ✅
B. in Parent
C. in interface A
D. in Child in interface A

1. 以下代码执行结果为
```java
public class Example {
    public static void main(String[] args) {
        Child child = new Child();
        child.doSomething();
    }
}

class Child extends Parent{
    public Child(){
        super();
        doSomething();
    }

    static {
        doSomething();
    }

    public static void doSomething(){
        System.out.print("A");
    }
}

class Parent{
    public Parent(){
        doSomething();
    }

    static{
        doSomething();
    }

    public static void doSomething(){
        System.out.print("B");
    }
}
```

A. "BABAB"
B. "ABAAB" 
C. "BABAA" ✅
D. "ABABB"

8. 以下代码执行结果为
```java
public class Example {
    public static void main(String[] args) {
        Parent child = new Child();
        child.doSomething();
    }
}

class Child extends Parent{
    public Child(){
        super();
        doSomething();
    }

    static {
        doSomething();
    }

    public static void doSomething(){
        System.out.print("A");
    }
}

class Parent{
    public Parent(){
        doSomething();
    }

    static{
        doSomething();
    }

    public static void doSomething(){
        System.out.print("B");
    }
}
```

A. "BABAB" ✅
B. "ABAAB" 
C. "BABAA" 
D. "ABABB"

9. 以下代码执行结果为
```java
public class Example{
    public static void main(String[] args) {
            Parent child = (Parent) new Child();
            child.doSomething();
        }
    }

    class Child extends Parent{
        static private int val=2;
        public Child(){
            super();
            doSomething();
        }

        static {
            val++;
            doSomething();
        }

        public static void doSomething(){
            System.out.print(val);
        }
    }

    class Parent{
        static private int val=1;
        public Parent(){
            doSomething();
        }

        static{
            val++;
            doSomething();
        }

        public static void doSomething(){
            System.out.print(val);
        }
    }
```

A. 23333
B. 22222
C. 22333
D. 23232 ✅

10. 以下代码执行结果为
```java
    public class Example{
        public static void main(String[] args) {
            Parent child1 = new Child();
            child1.doSomething();
            Child child2 = new Child();
            child2.doSomething();
        }
    }

    class Child extends Parent{
        static private int val=2;
        public Child(){
            super();
            doSomething();
        }

        {
            ++val;
        }

        static {
            val++;
            doSomething();
        }

        public static void doSomething(){
            System.out.print(val);
        }
    }

    class Parent{
        static private int val=1;
        public Parent(){
            doSomething();
        }

        {
            ++val;
        }
        static{
            val++;
            doSomething();
        }
        public static void doSomething(){
            System.out.print(val);
        }
    }


```

A. 23343455 ✅
B. 23343454
C. 23344455
D. 23344454
C. 2334445565
D. 2234345565
E. 2334445465
F. 2234345465

11.  以下哪个选项中的内容全部能够被线程共享
A. 堆中实例对象、字符串常量池、本地方法栈
B. 运行时常量池、堆中实例对象 ✅
C. 方法区、本地方法栈
D. 局部变量表、方法区

12. 下列表述正确的数量有（）个
“每个frame的操作数栈最大栈深度是运行时决定的”
“类的initiating loader和defining loader可以是同一个loader”
“<clinit>方法是类加载阶段由jvm动态生成的”
“final static类型的变量是在类加载的准备阶段被赋值的”

A. 0
B. 1 ✅
C. 2
D. 3
E. 4

13. 下列表述正确的数量有（）个
“multianewarray中第一个从操作数栈中被pop出来的值代表第一维的长度，第二个代表第二维，以此类推...”
“multianewarray对于长度的规定是不允许有负值但允许出现0，这种情况下它会被处理成1”
“多维基本类型数组类的加载中不需要链接阶段”
“数组加载过程中不会抛出IllegalAccessError”

A. 0
B. 1 ✅
C. 2
D. 3
E. 4

14. 方法签名“Object m(int i, double d, Thread t) {...}”的描述符是
A.(IDLjava/lang/Thread;)Ljava/lang/Object; ✅
B.(IDLjava/lang/Thread;)Ljava/lang/Object
C.Ljava/lang/Object(IDLjava/lang/Thread;);
D.Ljava/lang/Object(IDLjava/lang/Thread;)

15. 下列表述正确的数量有（）个
“每个常量都需要有1-2byte的tag来标明自己的类型”
“UTF8info中包含了一个对StringInfo的index，而StringInfo中真正存储了字符串”
“由于java无法表示无符号short类型，因此可以把数据读取到int，再进行 value || 0xff的操作来获取低16位”
“常量池表的有效索引是从1到constant_pool_count”

A. 0 ✅
B. 1 
C. 2
D. 3
E. 4

16. 下列表述正确的数量有（）个
“在设置加载器的搜索路径时，dir/* 这样的表示会递归搜索dir目录以及子目录中所有的jar包”
“加载器搜索时如果能够在多个路径中找到某个类，那么以最先找到的结果作为返回结果”
“java.lang.Object这个类在实际的jar包中的文件名是Object.class”
“多个路径设置可以使用File.separator作为分割”

A. 0
B. 1 
C. 2 ✅
D. 3
E. 4

17. 下列表述正确的数量有（）个
“双亲委托中用户类加载器会同时委托给bootstrap加载器和ext加载器”
“双亲委托中当加载器无法从自己的搜索空间中找到类时才会向其他加载器发出委托”
“一个类可以加载同一个包下面声明为protected的另一个类”
```java
这三个类在同一个包中，Visitor无法通过编译
public class Visitor{
    Visible1.Unknown v1 = new Visible1.Unknown();
    Visible2.Unknown v2 = new Visible2.Unknown();
}
public class Visible1{
    private static class Unknown{}
}
class Visible2{
    public static class Unknown{}
}
```
A. 0
B. 1 
C. 2 ✅
D. 3
E. 4

18. 输入java -h得到的结果中包含“java [-options] -jar jarfile [args...]”，下列说法正确的是
A. []中的内容代表可选；jarfile不是一个必须的参数，可以先输入args再通过别的指令额外指定
B. []中的内容是必须至少选择一个的意思；jarfile是一个必须的参数
C. []中的内容代表可选；jarfile是一个必须的参数 ✅
D. []中的内容是必须至少选择一个的意思；jarfile不是一个必须的参数，可以先输入args再通过别的指令额外指定

19. 如果要使用commons cli的库实现自己的命令行接口，其中哪个流程是不涉及的
A. 预定义
B. 解析
C. 通过用户输入参数动态新增定义 ✅
D. 使用（实现业务逻辑）

20. 类加载的链接阶段不包括什么子阶段
A. 验证 Verification
B. 准备 Preparation
C. 解析 Resolution
D. 创建 Creation ✅