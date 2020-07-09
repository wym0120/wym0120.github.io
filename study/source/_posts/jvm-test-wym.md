---
title: jvm-test-wym
date: 2020-07-03 14:01:12
tags:
- jvm
categories:
- jvm
description: wym jvm test
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

A. 除了直接覆盖掉JDK目录对应类这个方法以外，存在一个方法使得自己修改的这个Object类替换掉官方的实现 ✅
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

A. 23343455            ✅
B. 23343454
C. 23344455
D. 23344454
C. 2334445565
D. 2234345565
E. 2334445465
F. 2234345465
F. 2333333333333
