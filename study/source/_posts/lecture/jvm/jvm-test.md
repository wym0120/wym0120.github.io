---
title: jvm-test
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
“每个常量最多需要2byte的tag来标明自己的类型”
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


<!-- 1. 我们在测试用例中请大家自行在JVVM中实现的测试用方法类名是：

   ```
   A. TestUtil ✅
   B. TestHack
   C. TestCase
   D. IOUtil
   ``` -->

2. 下列哪种功能IDEA的debugger没有提供：

   ```
   A. 在抛出特定异常之前暂停程序的异常断点
   B. 符合特定条件（如某个变量等于某个值）时才触发的断点
   C. 在某个断点被触发之后才生效的断点
   D. 以上功能都提供了 ✅
   ```

<!-- 3. 指令`invokeStatic`是在哪次实验中要求实现的？

   ```
   A. Lab3
   B. Lab4
   C. Lab5
   D. Lab6 ✅
   ``` -->

4. 下列关于字节码的说法中，错误的是：

   ```
   A. Java字节码之所以叫字节码是因为指令的操作码(opcode)只有一个字节
   B. GOTO的offset是相对于GOTO的操作码的地址的
   C. Java字节码储存在classfile的常量池（constantpool）字段中 ✅
   D. invokeVirtual 比 invokeInterface 指令短
   ```

5. 在使用Java程序读取数据类型`u2`时，应该使用哪种类型的变量？

   ```
   A. unsigned short
   B. int ✅
   C. short
   D. char
   ```

6. 关于指令`FCMPG`和指令`FCMPL`的说法中，正确的是：（假设当前操作数栈的情况是: ...op1,op2）

   ```
   A. 如果op1>op2，FCMPG压栈1，FCMPL压栈-1
   B. 如果op1>op2，FCMPG压栈-1，FCMPL压栈1
   C. 如果op1==op2, FCMPL和FCMPG都压栈-1
   D. FCMPL和FCMPG仅在op1和(或)op2中有NaN的时候行为才有区别 ✅
   ```

7. `byte a = 0xff;`那么在Java中，表达式`a & 0xff`的值和类型分别是

   ```
   A. -1, int ✅
   B. 0xff, int
   C. -1, short
   D. 0xff, byte
   ```

8. 关于指令`ILOAD`，下面说法中正确的是：

   ```
   A. ILOAD 把一个4字节的数据当作int从局部变量表(LocalVars)加载到操作数栈(OperandStack)中 ✅
   B. ILOAD 把一个4字节的数据当作int从操作数栈加载到局部变量表中
   C. ILOAD 把一个4字节的数据当作int从常量池(ConstantPool) 加载到操作数栈中
   D. 以上说法都不对
   ```

<!-- 9. 在实验手册中，要求大家使用的JDK是：

   ```
   A. OpenJDK 8
   B. 任何JDK 1.8
   C. Oracle JDK 8 ✅
   D. Maven 5
   ``` -->

10. "双亲委托机制"是：

    ```
    A. 实现运行时多态的机制
    B. 提高编译器性能的机制
    C. 用在类加载器上的机制 ✅
    D. 实现虚函数调用的机制
    ```

11. 下列关于`invokeVirtual`的内容，错误的是：

    ```
    A. invokeVirtual的实现中可以使用虚函数表（Vtable）进行优化
    B. invokeVirtual可以用来调用本地方法(native method)
    C. invokeVirtual可以用来调用构造方法(Constructor) ✅
    D. ABC里至少有一个是错的
    ```

12. 这段代码正确地实现`ISUB`指令了吗？

    ```java
    public class ISUB extends NoOperandsInstruction {
        @Override
        public void execute(StackFrame frame) {
            OperandStack stack = frame.getOperandStack();
            int val1 = stack.popInt();
            int val2 = stack.popInt();
            int res = val1 - val2;
            stack.pushInt(res);
        }
    }
    ```

    ```
    A. 正确实现了
    B. 没有正确实现 ✅
    C. 别选这一项，这是判断题
    D. 楼上说的对
    ```

13. 关于`StackFrame`的说法中，正确的是：

    ```
    A. 在运行过程中，每个method对应且仅对应一个StackFrame
    B. 有的StackFrame可能有多个method
    C. 有的method可能对应多个StackFrame ✅
    D. StackFrame可以多线程共享
    ```

14. `System.out.println("this is a string")`方法有几个参数？

    ```
    A. 1个，是内容为"this is a string"的String ✅
    B. 2个，分别是this和String
    C. 2个，分别是类名和String
    D. println是个宏(macro), 不是方法
    ```

15. 方法`foo`描述符为`(III)V`, 关于`foo`的说法正确的是：

    ```
    A. foo的返回值是Void类型的对象
    B. foo的maxLocal可能是2
    C. foo的maxLocal可能是6 ✅
    D. 调用foo的时候应该使用invokeVirtual指令
    ```

<!-- 16. 需要正确配置的Java环境变量是：

    ```
    A. $JAVAHOME
    B. $JAVA_HOME ✅
    C. $JavaHome
    D. $java_home
    ``` -->

<!-- 17. 大作业中，medium1测试用例一直是`空指针异常`说明：

    ```
    A. 有指令没有实现
    B. 所有指令都实现了但是有指令实现错误
    C. 框架代码写错了
    D. 哈，你也发现其实啥也说明不了了吧？这是一道送分题，选这一项，并且记得下次不要再这样问问题了喔 ✅
    ``` -->

18. 实验和大作业过程中，用哪个指令来反汇编`.class`文件？

    ```
    A. javac
    B. javap ✅
    C. java -jar
    D. mvn decompile
    ```

19. 下列关于`classfile`中`attribute`的说法正确的是：

    ```
    A. Code属于一种Attribute，每个方法都有这个Attribute 
    B. 在classfile中加入自定义的Attribute不会影响JVM正常解析classfile ✅
    C. 在classfile中，Attribute储存在constantpool里
    D. 以上说法都不对
    ```

20. 下列关于`classfile`中`IntergerInfo`这一常量池信息说法正确的是：

    ```
    A. 其中四字节的int是按小端顺序储存的
    B. 其中四字节的int是按大端顺序储存的 ✅
    C. 储存顺序和JVM的实现有关，选择一种即可
    D. classfile中储存的int是6字节，在加载到JVM后需要进行ValueSetConversion
    ```

21. 如果`FADD`执行时操作数栈顶的数据其实是int（例如是被ICONST指令加载进来的）：

    ```
    A. JVM的行为是未定义的，可以随意处理 ✅
    B. JVM应该在执行到这条指令时抛出异常
    C. JVM应该把int的值转换成float
    D. Java5之后，JVM可以使用指令多态技术把FADD替换成IADD而不会引发异常
    ```

22. 下面哪个是JVM中加载引用的指令：

    ```
    A. ALOAD ✅
    B. BLOAD
    C. ILOAD
    D. DLOAD
    ```

23. 在描述符中，如何表示`long`类型:

    ```
    A. L
    B. J ✅
    C. K
    D. Ljava/lang/Long;
    ```

24. 下面这段代码对`LUSHR`的实现正确吗？

    ```java
    @Override
        public void execute(StackFrame frame) {
            OperandStack stack = frame.getOperandStack();
            int val2 = stack.popInt();
            long val1 = stack.popLong();
            long res = val1 >>> (val2 & 0x2f);
            stack.pushLong(res);
        }
    ```

    ```
    A. 正确
    B. 不正确 ✅
    C. 这是道判断题，别选这一项
    D. 楼上说的对
    ```

25. `GOTO`指令的`offset`是：

    ```
    A. 有符号数 ✅
    B. 无符号数
    C. 对常量池中一个IntegerInfo的引用，IntegerInfo储存了真正的offset值
    D. 跳转目标的绝对地址
    ```
    