# JavaSE

## 源

### 源文档

> * [<font color="violet">第01章_Java语言概述.md</font>](./相关资料/第01章_Java语言概述/第01章_Java语言概述.md)
> * [<font color="violet">第02章_变量与运算符.md</font>](./相关资料/第02章_变量与运算符/第02章_变量与运算符.md)
> * [<font color="violet">第03章_流程控制语句.md</font>](./相关资料/第03章_流程控制语句/第03章_流程控制语句.md)
> * [<font color="violet">第04章_IDEA的安装与使用（上）</font>](./相关资料/第04章_IDEA的安装与使用/第04章_IDEA的安装与使用（上）)
> * [<font color="violet">第04章_IDEA的安装与使用（下）</font>](./相关资料/第04章_IDEA的安装与使用/第04章_IDEA的安装与使用（下）)
> * [<font color="violet">IntelliJ IDEA 常用快捷键一览表.md</font>](./相关资料/第04章_IDEA的安装与使用/IntelliJ IDEA 常用快捷键一览表.md)
> * [<font color="violet">第05章_数组</font>](./相关资料/第05章_数组)
> * [<font color="violet">第06章_面向对象编程（基础）</font>](./相关资料/第06章_面向对象编程（基础）)
> * [<font color="violet">第07章_面向对象编程（进阶）</font>](./相关资料/第07章_面向对象编程（进阶）)
> * [<font color="violet">第08章_面向对象编程（高级）</font>](./相关资料/第08章_面向对象编程（高级）)
> * [<font color="violet">第09章_异常处理</font>](./相关资料/第09章_异常处理)
> * [<font color="violet">第10章_多线程</font>](./相关资料/第10章_多线程)
> * [<font color="violet">第11章_常用类和基础API</font>](./相关资料/第11章_常用类和基础API)
> * [<font color="violet">第12章_集合框架</font>](./相关资料/第12章_集合框架)
> * [<font color="violet">第13章_泛型</font>](./相关资料/第13章_泛型)
> * [<font color="violet">第14章_数据结构与集合源码</font>](./相关资料/第14章_数据结构与集合源码)
> * [<font color="violet">第15章_File类与IO流</font>](./相关资料/第15章_File类与IO流)
> * [<font color="violet">第16章_网络编程</font>](./相关资料/第16章_网络编程)
> * [<font color="violet">第17章_反射机制</font>](./相关资料/第17章_反射机制)
> * [<font color="violet">第18章_JDK8-17新特性</font>](./相关资料/第18章_JDK8-17新特性)
>

## 概述

### 概念

DOS（Disk Operating System）磁盘操作系统

GUI（Graphical User Interface,）图形化界面

CLI（Command Line Interface）命令行方式

```powershell
#进入D盘
d:
#查看当前目录的内容
dir
#创建目录
md test
#删除空目录
rd test
#删除文件
del 1.txt
```

![1685022204791](C:\Users\slight-leaves\AppData\Roaming\Typora\typora-user-images\1685022204791.png)

![1685022220753](C:\Users\slight-leaves\AppData\Roaming\Typora\typora-user-images\1685022220753.png)

### Java开发环境

#### 开发环境介绍

> JDK = JRE + 开发工具集（例如Javac编译工具等）
>
> JRE = JVM + Java SE标准类库

JDK（Java Development Kit）是Java程序开发工具包，包含`JRE` 和开发人员使用的工具

JRE （Java Runtime Enviroment）是Java程序的运行时环境，包含`JVM` 和运行时所需要的`核心类库`。

![1685022881269](Java.assets/1685022881269.png)

![1685022925549](Java.assets/1685022925549.png)

##### JVM

JVM是一个虚拟的计算机，是Java程序的运行环境。JVM具有指令集并使用不同的存储区域，负责执行指令，管理数据、内存、寄存器。

![1685111716265](Java.assets/1685111716265.png)

###### 跨平台性

![1685111784042](Java.assets/1685111784042.png)

![1685111822255](Java.assets/1685111822255.png)

###### 自动内存管理

内存分配、内存回收

减少内存溢出和内存泄漏

内存泄漏，指把垃圾当作不是垃圾

#### 重要版本

JDK8、JDK11、JDK17

#### 环境变量

> classpath，用于指名class文件识别的路径。没必要配置。

配置环境变量的原因：

输一条命令查找该命令的过程：

==当前目录下--->系统内部命令---->系统环境变量Path---->用户环境变量Path==

注：谁在最上面谁先执行

![1685024517052](Java.assets/1685024517052.png)

### Java运行过程

> javac   XXX.java		这个是在windows环境下不区分大小写
>
> java	XXYY				这个必须区分大小写，因为是java编译
> 		注：如果环境变量里写了classpath，就会去classpath那个路径下去找

![1685024969160](Java.assets/1685024969160.png)



#### 字节码文件名

* 字节码文件名：java文件中的class名
* （一个java文件中可以有多个class）意味着一个java文件编译后可以生成多个class文件

![1685025945175](Java.assets/1685025945175.png)

#### 终端乱码问题

常用的代码页编号如下：

| 代码页编号 | 名称               | 描述                                           |
| ---------- | ------------------ | ---------------------------------------------- |
| 437        | OEM 美国英语       | IBM PC 的原始字符集                            |
| 65001      | Unicode (UTF-8)    | 可变长度 Unicode 编码                          |
| 850        | OEM 多语言拉丁文 I | 西欧语言的字符集                               |
| 936        | 简体中文 GBK       | 包括 GB2312 和 BIG5 码表的扩展                 |
| 950        | 繁体中文 Big5      | 台湾、香港等繁体中文字符集                     |
| 1252       | 西欧语言           | Windows 的默认字符集，包括 0 到 255 的所有字符 |

更改当前终端的字符集编码（==注，不建议使用该命令==）

```powershell
chcp 65001
```

> 目前无法做到文本utf-8格式，终端输入该命令后不乱码的情况（windows 11）

最好的方式，用原始记事本打开，`Ctrl + Shift +S`另存为，选ansi编码

> 原因：windos默认命令行就是用的GBK，ANSI在中文的操作系统下表示的就是GBK

![1685034195522](Java.assets/1685034195522.png)

这样才不会乱码

![1685034344206](Java.assets/1685034344206.png)

#### Windos和Java的部分冲突

* Java是==严格区分大小==写的
* 而Windos下目录和文件名是==不区分大小写==的！！！

> 特殊情况：如果一个Java文件或一个包中有多个大小写有别的“同名类”，
> 	如：一个Java文件中有两个类：`HelloJava`、`Hellojava`
> 	这样编译之后就会出字节码文件覆盖问题（==因为windows下不区分大小写==）
>
> 此时：
> 	有大小写差异同名的，谁后编译谁最终就会保留（一般从上到下编译）

![1685109702351](Java.assets/1685109702351.png)

#### Java是一种半解释型语言的原因

![1685112574274](Java.assets/1685112574274.png)

`Java编译器`又叫前端编译器

解释器和JIT编译器，所以叫半解释型语言

### 注释

> 注：用javadoc命令生成文档注释时，必须有public class

```java
//单行注释
/* 
	多行注释
	多行注释不能嵌套使用
*/

/**
	文档注释内容可以被JDK提供的工具，javadoc所解析，生成一套以网页文件形式体现的程序说明文档。
	@author	zhaofengping
	@version 1.0
*/
```

```powershell
javadoc -d mydoc -author -version HelloJava.java
```

![1685110674342](Java.assets/1685110674342.png)

![1685110937930](Java.assets/1685110937930.png)

![1685111127455](Java.assets/1685111127455.png)

![1685111142286](Java.assets/1685111142286.png)

### 官方API文档

>在线看	https://docs.oracle.com/en/java/javase/17/docs/api/index.html
>
>离线下载	https://www.oracle.com/java/technologies/javase-jdk17-doc-downloads.html

### JVM

> JVM是一种规范，其有许多具体的实现方式
>
> 其中HotSpot就是官方发布的一种虚拟机

![1688742729968](Java.assets/1688742729968.png)

| 区域名称   | 作用                                                         |
| ---------- | ------------------------------------------------------------ |
| `虚拟机栈` | 用于存储正在执行的每个Java方法的局部变量表等。局部变量表存放了编译期可知长度<br/>的各种基本数据类型、对象引用，方法执行完，自动释放。 |
| `堆内存`   | 存储对象（包括数组对象），new来创建的，都存储在堆内存。      |
| `方法区`   | 存储已被虚拟机加载的类信息、常量、（静态变量）、即时编译器编译后的代码等数据。 |
| 本地方法栈 | 当程序中调用了native的本地方法时，本地方法执行期间的内存区域 |
| 程序计数器 | 程序计数器是CPU中的寄存器，它包含每一个线程下一条要执行的指令的地址 |

### JavaBean

> JavaBean是一种Java语言写成的可重用组件。

* 类是公共的
* 有一个无参的公共的构造器
* 有属性，且有对应的get、set方法



### UML

> * UML（Unified Modeling Language，统一建模语言），用来描述 软件模型 和 架构 的图形化语言。
> * 常用的UML工具软件有 PowerDesinger 、 Rose 和 Enterprise Architect 。
> * UML工具软件不仅可以绘制软件开发中所需的各种图表，还可以生成对应的源代码。
> * 在软件开发中，使用 UML类图 可以更加直观地描述类内部结构（类的属性和操作）以及类之间的关系（如关联、依赖、聚合等）。
>   * +表示 public 类型， - 表示 private 类型，#表示protected类型
>   * 方法的写法: 方法的类型(+、-) 方法名(参数名： 参数类型)：返回值类型
>   * 斜体表示抽象方法或类。

![1689246304771](Java.assets/1689246304771.png)

## 变量与运算符

### 关键字

> https://docs.oracle.com/javase/tutorial/java/nutsandbolts/_keywords.html

有`const`和`goto`两个关键字

### 标识符

自己起名

* 由26个英文字母大小写，0-9 ，_或 $ 组成
* 数字不可以开头
  * 因为有些数值有字母后缀，如long的l或L，float的F和f
*  Java中严格区分大小写，长度无限制

命名规范

* 包名：多单词组成时所有字母都小写：xxxyyyzzz
  * 例如：java.lang
* 类名、接口名：多单词组成时，所有单词的首字母大写：XxxYyyZzz
  * 例如：HelloWorld，String，System等
* 变量名、方法名：多单词组成时，第一个单词首字母小写，第二个单词开始每个单词首字母大写：xxxYyyZzz
  * 例如：age,name,bookName,main,binarySearch,getName
* 常量名：所有字母都大写。多单词时每个单词用下划线连接：XXX_YYY_ZZZ
  * 例如：MAX_VALUE,PI,DEFAULT_CAPACITY

### 变量常识

变量的构成包含三个要素：`数据类型`、`变量名`、`存储的值`

* 变量的作用域：其定义所在的一对{ }内。
* 变量只有在其`作用域`内才有效。出了作用域，变量不可以再被调用。
* 同一个作用域内，不能定义重名的变量。

### 变量的数据类型

![1685366291886](Java.assets/1685366291886.png)

#### 整型

![1685366431084](Java.assets/1685366431084.png)

* 定义long类型的变量，赋值时需要以"`l`"或"`L`"作为后缀。
* Java的整型`常量默认为 int 型`。
* byte、short、char进行非++或--运算时，结果都是int

#### 浮点类型

![1685366703575](Java.assets/1685366703575.png)

* 定义float类型的变量，赋值时需要以"`f`"或"`F`"作为后缀。
* Java 的浮点型`常量默认为double型`。
* 并不是所有的小数都能可以精确的用二进制浮点数表示。二进制浮点数只能精确表示2的负次幂的和。
  * 不适合金融领域
  * 如果需要`精确`数字计算或保留指定位数的精度，需要使用`BigDecimal类`。

#### char

> [<font color="violet">CodeCharts.pdf</font>](./相关资料/CodeCharts.pdf)

- 字符型变量的三种表现形式：

  - **形式1：**使用单引号(' ')括起来的`单个字符`。

    例如：char c1 = 'a';   char c2 = '中'; char c3 =  '9';

  - **形式2：**直接使用 `Unicode值`来表示字符型常量：‘`\uXXXX`’。其中，XXXX代表一个十六进制整数。

    例如：\u0023 表示 '#'。

  - **形式3：**Java中还允许使用`转义字符‘\’`来将其后的字符转变为特殊字符型常量。

    例如：char c3 = '\n';  // '\n'表示换行符

  | 转义字符 |  说明  | Unicode表示方式 |
  | :------: | :----: | :-------------: |
  |   `\n`   | 换行符 |     \u000a      |
  |   `\t`   | 制表符 |     \u0009      |
  |   `\"`   | 双引号 |     \u0022      |
  |   `\'`   | 单引号 |     \u0027      |
  |   `\\`   | 反斜线 |     \u005c      |
  |   `\b`   | 退格符 |     \u0008      |
  |   `\r`   | 回车符 |     \u000d      |

- char类型是可以进行运算的。因为它都对应有Unicode码，可以看做是一个数值。

#### boolean

- 不可以使用0或非 0 的整数替代false和true，这点和C语言不同。
- 拓展：Java虚拟机中没有任何供boolean值专用的字节码指令，Java语言表达所操作的boolean值，在编译之后都使用java虚拟机中的int数据类型来代替：true用1表示，false用0表示。——《java虚拟机规范 8版》

> 编译时不谈占几个字节。
>
> 但是JVM在给boolean类型分配内存空间时，boolean类型的变量占据一个槽位(slot，等于4个字节)。
> 细节：true:1  false:0
>
> >拓展：在内存中，byte\short\char\boolean\int\float : 占用1个slot
> >              double\long :占用2个slot

### 变量间的转换

#### 自动类型提升

![1685367409825](Java.assets/1685367409825.png)

（1）小范围值赋给大变量

```java
int i = 'A';//char自动升级为int，其实就是把字符的编码值赋值给i变量了
double d = 10;//int自动升级为double
long num = 1234567; //右边的整数常量值如果在int范围呢，编译和运行都可以通过，这里涉及到数据类型转换

//byte bigB = 130;//错误，右边的整数常量值超过byte范围
long bigNum = 12345678912L;//右边的整数常量值如果超过int范围，必须加L，显式表示long类型。否则编译不通过
```

（2）小变量和大变量混合运算时，最终提升为大变量算

```java
int i = 1;
byte b = 1;
double d = 1.0;

double sum = i + b + d;//混合运算，升级为double
```

3）当byte,short,char数据类型的变量进行算术运算时，按照int类型处理。

```java
//byte、short、char进行非++或--运算时，结果都是int

byte b1 = 1;
byte b2 = 2;
byte b3 = b1 + b2;//编译报错，b1 + b2自动升级为int

char c1 = '0';
char c2 = 'A';
int i = c1 + c2;//至少需要使用int类型来接收
System.out.println(c1 + c2);//113 
```

#### 强制类型转换

（1）大范围值传给小变量

```java
int i = (int)3.14;//损失精度

double d = 1.2;
int num = (int)d;//损失精度

int i = 200;
byte b = (byte)i;//溢出
```

（2）手动提升

```java
int i = 1;
int j = 2;
double bigger = (double)(i/j);
```

（3）声明long类型变量时，可以出现省略后缀的情况。float则不同。

```java
long l1 = 123L;
long l2 = 123;//如何理解呢？ 此时可以看做是int类型的123自动类型提升为long类型

//long l3 = 123123123123; //报错，因为123123123123超出了int的范围。
long l4 = 123123123123L;


//float f1 = 12.3; //报错，因为12.3看做是double，不能自动转换为float类型
float f2 = 12.3F;
float f3 = (float)12.3;
```

### 数据存储

- **十进制（decimal）**
  - 数字组成：0-9
  - 进位规则：满十进一
- **二进制（binary）**
  - 数字组成：0-1
  - 进位规则：满二进一，以`0b`或`0B`开头
- **八进制（octal）：很少使用**
  - 数字组成：0-7
  - 进位规则：满八进一，以数字`0`开头表示
- **十六进制**
  - 数字组成：0-9，a-f
  - 进位规则：满十六进一，以`0x`或`0X`开头表示。此处的 a-f 不区分大小写

代码演示：

```java
class BinaryTest {
	public static void main(String[] args) {
		
		int num1 = 123;		//十进制
		int num2 = 0b101;	//二进制
		int num3 = 0127;	//八进制
		int num4 = 0x12aF;	//十六进制

		System.out.println(num1);
		System.out.println(num2);
		System.out.println(num3);
		System.out.println(num4);

	}
}
```

#### 二进制转十进制

![1685369567471](Java.assets/1685369567471.png)

注：负数反码到原码的技巧，==从右往左数到第一个1，之前的所有位取反。==

#### 十进制转二进制

十进制转二进制：`除2取余的逆`

![1685370670813](Java.assets/1685370670813.png)

#### 二进制转八进制

![1685370731704](Java.assets/1685370731704.png)

#### 二进制转十六进制

![1685370765917](Java.assets/1685370765917.png)

#### 八进制、十六进制转二进制

![1685370843669](Java.assets/1685370843669.png)

### 基本类型与String的运算

1、任意八种基本数据类型的数据与String类型只能进行连接“+”运算，且结果一定也是String类型

```java
System.out.println("" + 1 + 2);//12

int num = 10;
boolean b1 = true;
String s1 = "abc";

String s2 = s1 + num + b1;
System.out.println(s2);//abc10true

//String s3 = num + b1 + s1;//编译不通过，因为int类型不能与boolean运算
String s4 = num + (b1 + s1);//编译通过
```

2、String类型不能通过强制类型()转换，转为其他的类型

```java
String str = "123";
int num = (int)str;//错误的

int num = Integer.parseInt(str);//正确的，后面才能讲到，借助包装类的方法才能转
```

```java
//String str1 = 4;                       //判断对错：no
String str2 = 3.5f + "";               //判断str2对错：yes
System.out.println(str2);              //输出：3.5
System.out .println(3+4+"Hello!");     //输出：7Hello!
System.out.println("Hello!"+3+4);      //输出：Hello!34
System.out.println('a'+1+"Hello!");    //输出：98Hello!
System.out.println("Hello"+'a'+1);     //输出：Helloa1


//练习2：
System.out.println("*    *");				//输出：*    *
System.out.println("*\t*");					//输出：*	*
System.out.println("*" + "\t" + "*");		//输出：*	*
System.out.println('*' + "\t" + "*");		//输出：*	*
System.out.println('*' + '\t' + "*");		//输出：51*
System.out.println('*' + "\t" + '*');		//输出：*	*
System.out.println("*" + '\t' + '*');		//输出：*	*
System.out.println('*' + '\t' + '*');		//输出：93
```

### 运算符

- 照`功能`分为：算术运算符、赋值运算符、比较(或关系)运算符、逻辑运算符、位运算符、条件运算符、Lambda运算符

|           分类            |                        运算符                        |
| :-----------------------: | :--------------------------------------------------: |
|     算术运算符（7个）     |                +、-、*、/、%、++、--                 |
|    赋值运算符（12个）     | =、+=、-=、*=、/=、%=、>>=、<<=、>>>=、&=、\|=、^=等 |
| 比较(或关系)运算符（6个） |                 >、>=、<、<=、==、!=                 |
|     逻辑运算符（6个）     |                &、\|、^、!、&&、\|\|                 |
|      位运算符（7个）      |               &、\|、^、~、<<、>>、>>>               |
|     条件运算符（1个）     |               (条件表达式)?结果1:结果2               |
|    Lambda运算符（1个）    |                  ->（第18章时讲解）                  |

- 按照`操作数个数`分为：一元运算符（单目运算符）、二元运算符（双目运算符）、三元运算符 （三目运算符）

|           分类            |                  运算符                  |
| :-----------------------: | :--------------------------------------: |
| 一元运算符（单目运算符）  |    正号（+）、负号（-）、++、--、!、~    |
| 二元运算符（双目运算符）  | 除了一元和三元运算符剩下的都是二元运算符 |
| 三元运算符 （三目运算符） |         (条件表达式)?结果1:结果2         |

#### `++`、`--`

* [<font color="violet">Java.drawio</font>](./Java.drawio)

![1685372761407](Java.assets/1685372761407.png)

```java
int n = 10;
n += (n++) + (++n);  //n = n + (n++) + (++n)   10 + 10 +12
System.out.println(n);//32
```



#### 赋值运算符

①和②的区别

+=、-=、*=、/=、%=操作，==不会改变变量本身的数据类型==

```java
short s = 3; 
s = s+2;  //① 编译报错
s += 2;   //② 正常执行

//①和②的区别
```

#### 比较关系运算符

`>` `<`   `>=`  `<=` 	只适用于基本数据类型（除boolean类型之外）

`==`   `!=` 	适用于基本数据类型和引用数据类型

#### 逻辑运算符

![1685374565760](Java.assets/1685374565760.png)

##### 区分“&”和“&&”

- 相同点：如果符号左边是true，则二者都执行符号右边的操作
- 不同点：& ： 如果符号左边是false,则继续执行符号右边的操作

​                     && ：如果符号左边是false,则不再继续执行符号右边的操作

- 建议：开发中，推荐使用 && 

```java
int x = 1;
int y = 1;

if(x++ == 2 & ++y == 2){
	x = 7;
}
System.out.println("x=" + x + ",y=" + y);	//2		2
```

```java
int x = 1,y = 1;

if(x++ == 2 && ++y == 2){
	x =7;
}
System.out.println("x="+x+",y="+y);		//2		1
```



##### 区分“|”和“||”

- 相同点：如果符号左边是false，则二者都执行符号右边的操作

- 不同点：| ： 如果符号左边是true，则继续执行符号右边的操作

  ​               || ：如果符号左边是true，则不再继续执行符号右边的操作

- 建议：开发中，推荐使用 ||

```java
int x = 1,y = 1;

if(x++==1 | ++y==1){
	x =7;
}
System.out.println("x="+x+",y="+y);		//7	2
```

```java
int x = 1,y = 1;

if(x++==1 || ++y==1){
	x =7;
}
System.out.println("x="+x+",y="+y);		//7	1
```

#### 位运算符

![1685375604818](Java.assets/1685375604818.png)

![1685375626632](Java.assets/1685375626632.png)

交换两个值

```java
//（推荐）实现方式1：优点：容易理解，适用于不同数据类型    缺点：需要额外定义变量
		//int temp = m;
		//m = n;
		//n = temp;

		//实现方式2：优点：没有额外定义变量    缺点：可能超出int的范围；只能适用于数值类型
		//m = m + n; //15 = 10 + 5
		//n = m - n;//10 = 15 - 5
		//m = m - n;//5 = 15 - 10
	
		//实现方式3：优点：没有额外定义变量    缺点：不易理解；只能适用于数值类型
		m = m ^ n; 
		n = m ^ n; //(m ^ n) ^ n          m
		m = m ^ n; //  (m^n) ^m		n
```

#### 条件运算符

![1685375927113](Java.assets/1685375927113.png)

## 流程控制语句

### 顺序结构

![1685977512403](Java.assets/1685977512403.png)

Java中定义变量时采用合法的`前向引用`。如：

```java
public static void main(String[] args) {
	int num1 = 12;
	int num2 = num1 + 2;
}
```

错误形式：

```java
public static void main(String[] args) {
	int num2 = num1 + 2;
	int num1 = 12;
}
```

### 分支语句

#### if-else

>- 语句块只有一条执行语句时，一对`{}可以省略`，但建议保留
>- 当if-else结构是“多选一”时，最后的`else是可选的`，根据需要可以省略

##### 单分支条件判断

![1685977823186](Java.assets/1685977823186.png)

```java
if(条件表达式)｛
  	语句块;
｝
```

##### 双分支条件判断

![1685977945412](Java.assets/1685977945412.png)

```java
if(条件表达式) { 
  	语句块1;
}else {
  	语句块2;
}
```

##### 多分支条件判断

![1685978048791](Java.assets/1685978048791.png)

```java
if (条件表达式1) {
  	语句块1;
} else if (条件表达式2) {
  	语句块2;
}
...
}else if (条件表达式n) {
 	语句块n;
} else {
  	语句块n+1;
}
```

##### 注意

> 当条件表达式之间是“`互斥`”关系时（即彼此没有交集），条件判断语句及执行语句间顺序无所谓。
>
> 当条件表达式之间是“`包含`”关系时，“`小上大下 / 子上父下`”，否则范围小的条件表达式将不可能被执行。

![1685978141615](Java.assets/1685978141615.png)

![1685978277634](Java.assets/1685978277634.png)

#### switch-case

> - switch(表达式)中表达式的值必须是下述几种类型之一：byte，short，char，int，枚举 (jdk 5.0)，String (jdk 7.0)；
>
> - case子句中的值必须是常量，不能是变量名或不确定的表达式值或范围；
>
> - 同一个switch语句，所有case子句中的常量值互不相同；
>
> - break语句用来在执行完一个case分支后使程序跳出switch语句块；
>
>   如果没有break，程序会顺序执行到switch结尾；
>
> - default子句是可选的。同时，位置也是灵活的。当没有匹配的case时，执行default语句。

![1685978469591](Java.assets/1685978469591.png)

```java
switch(表达式){
    case 常量值1:
        语句块1;
        //break;
    case 常量值2:
        语句块2;
        //break; 
    // ...
   [default:
        语句块n+1;
        break;
   ]
}
```

错误举例：

```java

int key = 10;
switch(key){
	case key > 0 :		//不能是表达式
        System.out.println("正数");
        break;
    case key < 0:
        System.out.println("负数");
        break;
    default:
        System.out.println("零");
        break;
}
```

##### 利用case的穿透性

> 在switch语句中，如果case的后面不写break，将出现穿透现象，也就是一旦匹配成功，不会在判断下一个case的值，直接向后运行，直到遇到break或者整个switch语句结束，执行终止。

**案例1：**使用switch-case实现：对学生成绩大于60分的，输出“合格”。低于60分的，输出“不合格”。

```java
class SwitchCaseTest3 {
	public static void main(String[] args) {
		
		int score = 67;
		/*
		写法1：极不推荐
		switch(score){
			case 0:
				System.out.println("不及格");
				break;
			case 1:
				System.out.println("不及格");
				break;
			//...

			case 60:
				System.out.println("及格");
				break;
			//...略...
		
		}
		*/

		//写法2：
		switch(score / 10){
			case 0:
			case 1:
			case 2:
			case 3:
			case 4:
			case 5:
				System.out.println("不及格");
				break;
			case 6:
			case 7:
			case 8:
			case 9:
			case 10:
				System.out.println("及格");
				break;
			default:
				System.out.println("输入的成绩有误");
				break;
		}

		//写法3：
		switch(score / 60){
			case 0:
				System.out.println("不及格");
				break;
			case 1:
				System.out.println("及格");
				break;
			default:
				System.out.println("输入的成绩有误");
				break;
		}
	}
}
```

**案例2：**编写程序：从键盘上输入2023年的“month”和“day”，要求通过程序输出输入的日期为2023年的第几天。

```java
import java.util.Scanner;

class SwitchCaseTest4 {
	public static void main(String[] args) {
		
		Scanner scan = new Scanner(System.in);

		System.out.println("请输入2023年的month:");
		int month = scan.nextInt();

		System.out.println("请输入2023年的day:");
		int day = scan.nextInt();

		//这里就不针对month和day进行合法性的判断了，以后可以使用正则表达式进行校验。

		int sumDays = 0;//记录总天数
		
		//写法1 ：不推荐（存在冗余的数据）
		/*
		switch(month){
			case 1:
				sumDays = day;
				break;
			case 2:
				sumDays = 31 + day;
				break;
			case 3:
				sumDays = 31 + 28 + day;
				break;
			//....
		
			case 12:
				//sumDays = 31 + 28 + ... + 30 + day;
				break;
		}
		*/

		//写法2：推荐
		switch(month){
			case 12:
				sumDays += 30;//这个30是代表11月份的满月天数
			case 11:
				sumDays += 31;//这个31是代表10月份的满月天数
			case 10:
				sumDays += 30;//这个30是代表9月份的满月天数
			case 9:
				sumDays += 31;//这个31是代表8月份的满月天数
			case 8:
				sumDays += 31;//这个31是代表7月份的满月天数
			case 7:
				sumDays += 30;//这个30是代表6月份的满月天数
			case 6:
				sumDays += 31;//这个31是代表5月份的满月天数
			case 5:
				sumDays += 30;//这个30是代表4月份的满月天数
			case 4:
				sumDays += 31;//这个31是代表3月份的满月天数
			case 3:
				sumDays += 28;//这个28是代表2月份的满月天数
			case 2:
				sumDays += 31;//这个31是代表1月份的满月天数
			case 1:
				sumDays += day;//这个day是代表当月的第几天
		}
		
		System.out.println(month + "月" + day + "日是2023年的第" + sumDays + "天");
        //关闭资源
		scan.close();
	}
}
```

**拓展：**

```
从键盘分别输入年、月、日，判断这一天是当年的第几天
 
注：判断一年是否是闰年的标准：
   1）可以被4整除，但不可被100整除
	  或
   2）可以被400整除
   
例如：1900，2200等能被4整除，但同时能被100整除，但不能被400整除，不是闰年
```

```java
import java.util.Scanner;

public class SwitchCaseTest04 {

    public static void main(String[] args) {

        Scanner scanner = new Scanner(System.in);
        System.out.print("请输入year:");
        int year = scanner.nextInt();

        System.out.print("请输入month:");
        int month = scanner.nextInt();

        System.out.print("请输入day:");
        int day = scanner.nextInt();

        //判断这一天是当年的第几天==>从1月1日开始，累加到xx月xx日这一天
        //(1)[1,month-1]个月满月天数
        //(2)单独考虑2月份是否是29天（依据是看year是否是闰年）
        //(3)第month个月的day天

        //声明一个变量days，用来存储总天数
        int sumDays = 0;

        //累加[1,month-1]个月满月天数
        switch (month) {
            case 12:
                //累加的1-11月
                sumDays += 30;//这个30是代表11月份的满月天数
                //这里没有break，继续往下走
            case 11:
                //累加的1-10月
                sumDays += 31;//这个31是代表10月的满月天数
                //这里没有break，继续往下走
            case 10:
                sumDays += 30;//9月
            case 9:
                sumDays += 31;//8月
            case 8:
                sumDays += 31;//7月
            case 7:
                sumDays += 30;//6月
            case 6:
                sumDays += 31;//5月
            case 5:
                sumDays += 30;//4月
            case 4:
                sumDays += 31;//3月
            case 3:
                sumDays += 28;//2月
                //在这里考虑是否可能是29天
                if (year % 4 == 0 && year % 100 != 0 || year % 400 == 0) {
                    sumDays++;//多加1天
                }
            case 2:
                sumDays += 31;//1月
            case 1:
                sumDays += day;//第month月的day天
        }

        //输出结果
        System.out.println(year + "年" + month + "月" + day + "日是这一年的第" + sumDays + "天");

        scanner.close();
    }
}
```

**案例3：**根据指定的月份输出对应季节

```java
import java.util.Scanner;

/*
 * 需求：指定一个月份，输出该月份对应的季节。一年有四季:
 * 		3,4,5	春季
 * 		6,7,8	夏季
 * 		9,10,11	秋季
 * 		12,1,2	冬季
 */
public class SwitchCaseTest5 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.print("请输入月份：");
        int month = input.nextInt();

        /*
		switch(month) {
            case 1:
                System.out.println("冬季");
                break;
            case 2:
                System.out.println("冬季");
                break;
            case 3:
                System.out.println("春季");
                break;
            case 4:
                System.out.println("春季");
                break;
            case 5:
                System.out.println("春季");
                break;
            case 6:
                System.out.println("夏季");
                break;
            case 7:
                System.out.println("夏季");
                break;
            case 8:
                System.out.println("夏季");
                break;
            case 9:
                System.out.println("秋季");
                break;
            case 10:
                System.out.println("秋季");
                break;
            case 11:
                System.out.println("秋季");
                break;
            case 12:
                System.out.println("冬季");
                break;
            default:
                System.out.println("你输入的月份有误");
                break;
		}
		*/

        // 改进版
        switch(month) {
            case 1:
            case 2:
            case 12:
                System.out.println("冬季");
                break;
            case 3:
            case 4:
            case 5:
                System.out.println("春季");
                break;
            case 6:
            case 7:
            case 8:
                System.out.println("夏季");
                break;
            case 9:
            case 10:
            case 11:
                System.out.println("秋季");
                break;
            default:
                System.out.println("你输入的月份有误");
                break;
        }

        input.close();
    }
}

```

常见错误实现：

```java
switch(month){
    case 3|4|5://3|4|5 用了位运算符，11 | 100 | 101结果是 111是7
        System.out.println("春季");
        break;
    case 6|7|8://6|7|8用了位运算符，110 | 111 | 1000结果是1111是15
        System.out.println("夏季");
        break;
    case 9|10|11://9|10|11用了位运算符，1001 | 1010 | 1011结果是1011是11
        System.out.println("秋季");
        break;
    case 12|1|2://12|1|2 用了位运算符，1100 | 1 | 10 结果是1111，是15
        System.out.println("冬季");
        break;
    default:
        System.out.println("输入有误");
}
```

使用if-else实现：

```java
if ((month == 1) || (month == 2) || (month == 12)) {
    System.out.println("冬季");
} else if ((month == 3) || (month == 4) || (month == 5)) {
    System.out.println("春季");
} else if ((month == 6) || (month == 7) || (month == 8)) {
    System.out.println("夏季");
} else if ((month == 9) || (month == 10) || (month == 11)) {
    System.out.println("秋季");
} else {
    System.out.println("你输入的月份有误");
}
```

#### 分支结构对比

> - i开发经验：如果既可以使用switch-case，又可以使用if-else，建议使用switch-case。因为效率稍高。
> - f-else语句优势
>   - if语句的条件是一个布尔类型值，if条件表达式为true则进入分支，可以用于范围的判断，也可以用于等值的判断，`使用范围更广`。
>   - switch语句的条件是一个常量值（byte,short,int,char,枚举,String），只能判断某个变量或表达式的结果是否等于某个常量值，`使用场景较狭窄`。
> - switch语句优势
>   - 当条件是判断某个变量或表达式是否等于某个固定的常量值时，使用if和switch都可以，习惯上使用switch更多。因为`效率稍高`。当条件是区间范围的判断时，只能使用if语句。
>   - 使用switch可以利用`穿透性`，同时执行多个分支，而if...else没有穿透性。

**案例一：**

```
编写程序：从键盘上读入一个学生成绩，存放在变量score中，根据score的值输出其对应的成绩等级：

score>=90           等级:  A
70<=score<90        等级:  B    
60<=score<70        等级:  C
score<60            等级:  D

方式一：使用if-else
方式二：使用switch-case:  score / 10:   0 - 10

```

```java
public class SwitchCaseExer3 {

    public static void main(String[] args) {

        Scanner scan = new Scanner(System.in);
        System.out.println("请输入学生成绩：");
        int score = scan.nextInt();

        char grade;//记录学生等级
        //方式1：
//        if(score >= 90){
//            grade = 'A';
//        }else if(score >= 70 && score < 90){
//            grade = 'B';
//        }else if(score >= 60 && score < 70){
//            grade = 'C';
//        }else{
//            grade = 'D';
//        }

        //方式2：
        switch(score / 10){
            case 10:
            case 9:
                grade = 'A';
                break;
            case 8:
            case 7:
                grade = 'B';
                break;
            case 6:
                grade = 'C';
                break;
            default :
                grade = 'D';
        }

        System.out.println("学生成绩为" + score + ",对应的等级为" + grade);

        scan.close();
    }
}
```

**案例二：**

```
编写一个程序，为一个给定的年份找出其对应的中国生肖。中国的生肖基于12年一个周期，每年用一个动物代表：rat、ox、tiger、rabbit、dragon、snake、horse、sheep、monkey、rooster、dog、pig。

提示：2022年：虎   2022 % 12 == 6 

```

![image-20220314005350344](Java.assets/image-20220314005350344.png)

```java
public class SwitchCaseExer4 {
    public static void main(String[] args){
        //从键盘输入一个年份
        Scanner input = new Scanner(System.in);
        System.out.print("请输入年份：");
        int year = input.nextInt();
        input.close();

        //判断
        switch(year % 12){
            case 0:
                System.out.println(year + "是猴年");
                break;
            case 1:
                System.out.println(year + "是鸡年");
                break;
            case 2:
                System.out.println(year + "是狗年");
                break;
            case 3:
                System.out.println(year + "是猪年");
                break;
            case 4:
                System.out.println(year + "是鼠年");
                break;
            case 5:
                System.out.println(year + "是牛年");
                break;
            case 6:
                System.out.println(year + "是虎年");
                break;
            case 7:
                System.out.println(year + "是兔年");
                break;
            case 8:
                System.out.println(year + "是龙年");
                break;
            case 9:
                System.out.println(year + "是蛇年");
                break;
            case 10:
                System.out.println(year + "是马年");
                break;
            case 11:
                System.out.println(year + "是羊年");
                break;
            default:
                System.out.println(year + "输入错误");
        }
    }
}
```

**案例三：押宝游戏**

```
随机产生3个1-6的整数，如果三个数相等，那么称为“豹子”，如果三个数之和大于9，称为“大”，如果三个数之和小于等于9，称为“小”，用户从键盘输入押的是“豹子”、“大”、“小”，并判断是否猜对了

提示：随机数  Math.random()产生 [0,1)范围内的小数
     如何获取[a,b]范围内的随机整数呢？(int)(Math.random() * (b - a + 1)) + a
```

![1659112038716](Java.assets/1659112038716.png)

```java
import java.util.Scanner;

public class SwitchCaseExer5 {
    public static void main(String[] args) {
        //1、随机产生3个1-6的整数
        int a = (int)(Math.random()*6 + 1);
        int b = (int)(Math.random()*6 + 1);
        int c = (int)(Math.random()*6 + 1);

        //2、押宝
        Scanner input = new Scanner(System.in);
        System.out.print("请押宝（豹子、大、小）：");
        String ya = input.next();
        input.close();

        //3、判断结果
        boolean result = false;
        //switch支持String类型
        switch (ya){
            case "豹子": result = a == b && b == c; break;
            case "大": result = a + b + c > 9; break;
            case "小": result = a + b + c <= 9; break;
            default:System.out.println("输入有误！");
        }

        System.out.println("a,b,c分别是：" + a +"," + b +"," + c );
        System.out.println(result ? "猜中了" : "猜错了");
    }
}
```

### 循环语句

#### for循环

![1688742198851](Java.assets/1688742198851.png)

![1685980079270](Java.assets/1685980079270.png)

> - for(;;)中的两个；不能多也不能少
> - ①初始化部分可以声明多个变量，但必须是同一个类型，用逗号分隔
> - ②循环条件部分为boolean类型表达式，当值为false时，退出循环
> - ④可以有多个变量更新，用逗号分隔

**语法格式：**

```java
for (①初始化部分; ②循环条件部分; ④迭代部分)｛
         	③循环体部分;
｝
```

**执行过程：**①-②-③-④-②-③-④-②-③-④-.....-②

> 一旦执行break，就跳出当前（最近的）循环结构。

**案例一：**水仙花数

题目：输出所有的水仙花数，所谓水仙花数是指一个3位数，其各个位上数字立方和等于其本身。例如： `153 = 1*1*1 + 3*3*3 + 5*5*5`

```java
public class ForTest4 {
	public static void main(String[] args) {
		//定义统计变量，初始化值是0
		int count = 0;
		
		//获取三位数，用for循环实现
		for(int x = 100; x < 1000; x++) {
			//获取三位数的个位，十位，百位
			int ge = x % 10;
			int shi = x / 10 % 10;
			int bai = x / 100;
			
			//判断这个三位数是否是水仙花数，如果是，统计变量++
			if((ge*ge*ge+shi*shi*shi+bai*bai*bai) == x) {
                System.out.println("水仙花数：" + x);
				count++;
			}
		}
		
		//输出统计结果就可以了
		System.out.println("水仙花数共有"+count+"个");
	}
}
```

**案例二：**结合break的使用，最大公约数和最小公倍数

比如：12和20的最大公约数是4，最小公倍数是60。

```java
public class ForTest5 {
    public static void main(String[] args) {
        //需求1：最大公约数
        int m = 12, n = 20;
        //取出两个数中的较小值
        int min = (m < n) ? m : n;

        for (int i = min; i >= 1; i--) {//for(int i = 1;i <= min;i++){

            if (m % i == 0 && n % i == 0) {
                System.out.println("最大公约数是：" + i); //公约数

                break; //跳出当前循环结构
            }
        }


        //需求2：最小公倍数
        //取出两个数中的较大值
        int max = (m > n) ? m : n;

        for (int i = max; i <= m * n; i++) {

            if (i % m == 0 && i % n == 0) {

                System.out.println("最小公倍数是：" + i);//公倍数

                break;
            }
        }

    }
}
```

#### while循环

> for循环与while循环的区别：初始化条件部分的作用域不同。

![1685981094246](Java.assets/1685981094246.png)

**语法格式：**

```java
①初始化部分
while(②循环条件部分)｛
    ③循环体部分;
    ④迭代部分;
}
```

**执行过程：**①-②-③-④-②-③-④-②-③-④-...-②

**案例1：**猜数字游戏

```
随机生成一个100以内的数，猜这个随机数是多少？

从键盘输入数，如果大了，提示大了；如果小了，提示小了；如果对了，就不再猜了，并统计一共猜了多少次。

提示：生成一个[a,b] 范围的随机数的方式：(int)(Math.random() * (b - a + 1) + a)
```

```java

public class GuessNumber {
    public static void main(String[] args) {
        //获取一个随机数
        int random = (int) (Math.random() * 100) + 1;

        //记录猜的次数
        int count = 1;

        //实例化Scanner
        Scanner scan = new Scanner(System.in);
        System.out.println("请输入一个整数(1-100):");
        int guess = scan.nextInt();

        while (guess != random) {

            if (guess > random) {
                System.out.println("猜大了");
            } else if (guess < random) {
                System.out.println("猜小了");
            }

            System.out.println("请输入一个整数(1-100):");
            guess = scan.nextInt();
			//累加猜的次数
            count++;

        }

        System.out.println("猜中了！");
        System.out.println("一共猜了" + count + "次");
    }
}
```

**案例2：折纸珠穆朗玛峰**

```
世界最高山峰是珠穆朗玛峰，它的高度是8848.86米，假如我有一张足够大的纸，它的厚度是0.1毫米。
请问，我折叠多少次，可以折成珠穆朗玛峰的高度?
```

```java

public class ZFTest {
    public static void main(String[] args) {
        //定义一个计数器，初始值为0
        int count = 0;

        //定义珠穆朗玛峰的高度
        int zf = 8848860;//单位：毫米

        double paper = 0.1;//单位：毫米

        while(paper < zf){
            //在循环中执行累加，对应折叠了多少次
            count++;
            paper *= 2;//循环的执行过程中每次纸张折叠，纸张的厚度要加倍
        }

        //打印计数器的值
        System.out.println("需要折叠：" + count + "次");
        System.out.println("折纸的高度为" + paper/1000 + "米，超过了珠峰的高度");
    }
}
```

#### do-while

![1685981336871](Java.assets/1685981336871.png)

> - 结尾while(循环条件)中循环条件必须是boolean类型
> - do{}while();最后有一个分号
> - do-while结构的循环体语句是至少会执行一次，这个和for和while是不一样的
> - 循环的三个结构for、while、do-while三者是可以相互转换的。

**语法格式：**

```java
①初始化部分;
do{
	③循环体部分
	④迭代部分
}while(②循环条件部分); 
```

**执行过程：**①-③-④-②-③-④-②-③-④-...-②

**案例1：ATM取款**

```
声明变量balance并初始化为0，用以表示银行账户的余额，下面通过ATM机程序实现存款，取款等功能。

=========ATM========
   1、存款
   2、取款
   3、显示余额
   4、退出
请选择(1-4)：
```

```java
import java.util.Scanner;


public class ATM {
	public static void main(String[] args) {

		//初始化条件
		double balance = 0.0;//表示银行账户的余额
		Scanner scan = new Scanner(System.in);
		boolean isFlag = true;//用于控制循环的结束

		do{
			System.out.println("=========ATM========");
			System.out.println("\t1、存款");
			System.out.println("\t2、取款");
			System.out.println("\t3、显示余额");
			System.out.println("\t4、退出");
			System.out.print("请选择(1-4)：");

			int selection = scan.nextInt();
			
			switch(selection){
				case 1:
					System.out.print("要存款的额度为：");
					double addMoney = scan.nextDouble();
					if(addMoney > 0){
						balance += addMoney;
					}
					break;
				case 2:
					System.out.print("要取款的额度为：");
					double minusMoney = scan.nextDouble();
					if(minusMoney > 0 && balance >= minusMoney){
						balance -= minusMoney;
					}else{
						System.out.println("您输入的数据非法或余额不足");
					}
					break;
				case 3:
					System.out.println("当前的余额为：" + balance);
					break;
				case 4:
					System.out.println("欢迎下次进入此系统。^_^");
					isFlag = false;
					break;
				default:
					System.out.println("请重新选择！");
					break;	
			}
		
		}while(isFlag);

		//资源关闭
		scan.close();
		
	}
}
```

**案例2：**随机生成一个100以内的数，猜这个随机数是多少？

从键盘输入数，如果大了提示，大了；如果小了，提示小了；如果对了，就不再猜了，并统计一共猜了多少次。

```java
import java.util.Scanner;

public class DoWhileExer {
    public static void main(String[] args) {
        //随机生成一个100以内的整数
		/*
		Math.random() ==> [0,1)的小数
		Math.random()* 100 ==> [0,100)的小数
		(int)(Math.random()* 100) ==> [0,100)的整数
		*/
        int num = (int)(Math.random()* 100);
        //System.out.println(num);

        //声明一个变量，用来存储猜的次数
        int count = 0;

        Scanner input = new Scanner(System.in);
        int guess;//提升作用域
        do{
            System.out.print("请输入100以内的整数：");
            guess = input.nextInt();

            //输入一次，就表示猜了一次
            count++;

            if(guess > num){
                System.out.println("大了");
            }else if(guess < num){
                System.out.println("小了");
            }
        }while(num != guess);

        System.out.println("一共猜了：" + count+"次");

        input.close();
    }
}
```

#### 三种循环结构对比

> - **三种循环结构都具有四个要素：**
>   - 循环变量的初始化条件
>   - 循环条件
>   - 循环体语句块
>   - 循环变量的修改的迭代表达式
>
> - **从循环次数角度分析**
>   - do-while循环至少执行一次循环体语句。
>   - for和while循环先判断循环条件语句是否成立，然后决定是否执行循环体。
> - **如何选择**
>   - 遍历有明显的循环次数（范围）的需求，选择for循环
>   - 遍历没有明显的循环次数（范围）的需求，选择while循环
>   - 如果循环体语句块至少执行一次，可以考虑使用do-while循环
>   - 本质上：三种循环之间完全可以互相转换，都能实现循环的功能

#### 死循环

> 最简单"无限"循环格式：`while(true)` , `for(;;)` 

**案例1：**从键盘读入个数不确定的整数，并判断读入的正数和负数的个数，输入为0时结束程序。

```java
import java.util.Scanner;

class PositiveNegative {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
        
		int positiveNumber = 0;//统计正数的个数
		int negativeNumber = 0;//统计负数的个数
		for(;;){  //while(true){
			System.out.println("请输入一个整数：(输入为0时结束程序)");
			int num = scanner.nextInt();
			if(num > 0){
				 positiveNumber++;
           		 }else if(num < 0){
				 negativeNumber++;
        		}else{
               		 System.out.println("程序结束");
				break; 
           			 }
         	}
		 System.out.println("正数的个数为："+ positiveNumber);
		 System.out.println("负数的个数为："+ negativeNumber);  
        
         	scanner.close();
	} 
}

```

#### 嵌套循环

> 从二维图形的角度看，外层循环控制`行数`，内层循环控制`列数`。
>
> 设外层循环次数为`m`次，内层为`n`次，则内层循环体实际上需要执行`m*n`次。

例如：两个for嵌套循环格式	

```java
for(初始化语句①; 循环条件语句②; 迭代语句⑦) {
    for(初始化语句③; 循环条件语句④; 迭代语句⑥) {
      	循环体语句⑤;
    }
}

//执行过程：① - ② - ③ - ④ - ⑤ - ⑥ - ④ - ⑤ - ⑥ - ... - ④ - ⑦ - ② - ③ - ④ - ⑤ - ⑥ - ④..
```

**执行特点：**外层循环执行一次，内层循环执行一轮。

**案例1：打印"菱形"形状的图案**

```
        * 
      * * * 
    * * * * * 
  * * * * * * * 
* * * * * * * * * 
  * * * * * * * 
    * * * * * 
      * * * 
        * 	
```

```java
public class ForForTest4 {

    public static void main(String[] args) {
    /*
        上半部分		i		m(表示-的个数)    n(表示*的个数)关系式：2*i + m = 10 --> m = 10 - 2*i
    --------*		   	 1	   			8			   1			n = 2 * i - 1
    ------* * *		   2	   6			   3
    ----* * * * *	   3	   4			   5
    --* * * * * * *	   4	   2		       7
    * * * * * * * * *  5	   0			   9

        下半部分         i      m                n              关系式： m = 2 * i
    --* * * * * * *    1       2                7                     n = 9 - 2 * i
    ----* * * * *      2       4                5
    ------* * *        3       6                3
    --------*          4       8                1

            */
        //上半部分
        for (int i = 1; i <= 5; i++) {
            //-
            for (int j = 1; j <= 10 - 2 * i; j++) {
                System.out.print(" ");
            }
            //*
            for (int k = 1; k <= 2 * i - 1; k++) {
                System.out.print("* ");
            }
            System.out.println();
        }
        //下半部分
        for (int i = 1; i <= 4; i++) {
            //-
            for (int j = 1; j <= 2 * i; j++) {
                System.out.print(" ");
            }

            //*
            for (int k = 1; k <= 9 - 2 * i; k++) {
                System.out.print("* ");
            }
            System.out.println();
        }
    }

}
```

**案例5：九九乘法表**

![image-20221113193013204](Java.assets/image-20221113193013204.png)

```java
public class ForForTest5 {
    public static void main(String[] args) {
        for (int i = 1; i <= 9; i++) {
            for (int j = 1; j <= i; j++) {
                System.out.print(i + "*" + j + "=" + (i * j) + "\t");
            }
            System.out.println();
        }
    }
}
```

### break和continue

|          | 适用范围                  | 在循环结构中使用的作用               | 相同点                       |
| -------- | ------------------------- | ------------------------------------ | ---------------------------- |
| break    | switch-case<br />循环结构 | 一旦执行，就结束(或跳出)当前循环结构 | 此关键字的后面，不能声明语句 |
| continue | 循环结构                  | 一旦执行，就结束(或跳出)当次循环结构 | 此关键字的后面，不能声明语句 |

案例

```java
class BreakContinueTest1 {
	public static void main(String[] args) {
	
		for(int i = 1;i <= 10;i++){
			
			if(i % 4 == 0){
				//break;//123
				continue;//123567910
				//如下的语句不可能被执行，编译不通过
				//System.out.println("今晚要约我吃饭");
			}

			System.out.print(i);
		}

		System.out.println("####");

		//嵌套循环中的使用
		for(int i = 1;i <= 4;i++){
		
			for(int j = 1;j <= 10;j++){
				if(j % 4 == 0){
					//break; //结束的是包裹break关键字的最近的一层循环！
					continue;//结束的是包裹break关键字的最近的一层循环的当次！
				}
				System.out.print(j);
			}
			System.out.println();
		}

	}
}
```

### 标签

### 带标签的使用

```java
break语句用于终止某个语句块的执行
{    ……	 
	break;
	 ……
}

break语句出现在多层嵌套的语句块中时，可以通过标签指明要终止的是哪一层语句块 
	label1: {   ……        
	label2:	     {   ……
	label3:			 {   ……
				           break label2;
				           ……
					 }
			     }
			} 

```

> - continue语句出现在多层嵌套的循环语句体中时，也可以通过标签指明要跳过的是哪一层循环。
> - 标号语句必须紧接在循环的头部。标号语句不能用在非循环语句的前面。

- 举例：

```java
class BreakContinueTest2 {
	public static void main(String[] args) {
		l:for(int i = 1;i <= 4;i++){
		
			for(int j = 1;j <= 10;j++){
				if(j % 4 == 0){
					//break l;
					continue l;
				}
				System.out.print(j);
			}
			System.out.println();
		}
	}
}
```

**案例：找素数**

分析：素数（质数）：只能被1和它本身整除的自然数。  ---> 从2开始，到这个数-1为止，此范围内没有这个数的约数。则此数是一个质数。
比如：2、3、5、7、11、13、17、19、23、...

**实现方式1：**

```java
class PrimeNumberTest {
	public static void main(String[] args) {
		
		
		//boolean isFlag = true; //用于标识i是否被除尽过

		long start = System.currentTimeMillis(); //记录当前时间距离1970-1-1 00:00:00的毫秒数
			
		int count = 0;//记录质数的个数


		for(int i = 2;i <= 100000;i++){  //i

			boolean isFlag = true; //用于标识i是否被除尽过
		
			for(int j = 2;j <= i - 1;j++){
				
				if(i % j == 0){ //表明i有约数
					isFlag = false;
				}
			
			}

			//判断i是否是质数
			if(isFlag){ //如果isFlag变量没有给修改过值，就意味着i没有被j除尽过。则i是一个质数
				//System.out.println(i);
				count++;
			}

			//重置isFlag
			//isFlag = true;
		
		}

		long end = System.currentTimeMillis();
		System.out.println("质数的个数为：" + count);
		System.out.println("执行此程序花费的毫秒数为：" + (end - start)); //16628

	}
}
```

**实现方式2：**针对实现方式1进行优化

```java
class PrimeNumberTest1 {
	public static void main(String[] args) {
		
		long start = System.currentTimeMillis(); //记录当前时间距离1970-1-1 00:00:00的毫秒数

		int count = 0;//记录质数的个数

		for(int i = 2;i <= 100000;i++){  //i

			boolean isFlag = true; //用于标识i是否被除尽过
		
			for(int j = 2;j <= Math.sqrt(i);j++){ //优化2：将循环条件中的i改为Math.sqrt(i)
				
				if(i % j == 0){ //表明i有约数
					isFlag = false;
					break;//优化1：主要针对非质数起作用
				}
			
			}

			//判断i是否是质数
			if(isFlag){ //如果isFlag变量没有给修改过值，就意味着i没有被j除尽过。则i是一个质数
				//System.out.println(i);
				count++;
			}
		
		}

		long end = System.currentTimeMillis();
		System.out.println("质数的个数为：" + count);
		System.out.println("执行此程序花费的毫秒数为：" + (end - start));//1062

	}
}
```

**实现方式3：**使用continue + 标签

```java
class PrimeNumberTest2 {
	public static void main(String[] args) {
		
		long start = System.currentTimeMillis(); //记录当前时间距离1970-1-1 00:00:00的毫秒数

		int count = 0;//记录质数的个数

		label:for(int i = 2;i <= 100000;i++){  //i
		
			for(int j = 2;j <= Math.sqrt(i);j++){ //优化2：将循环条件中的i改为Math.sqrt(i)
				
				if(i % j == 0){ //表明i有约数
					continue label;
				}
			
			}
			//一旦程序能执行到此位置，说明i就是一个质数
			System.out.println(i);
			count++;
		}
		

		long end = System.currentTimeMillis();
		System.out.println("质数的个数为：" + count);
		System.out.println("执行此程序花费的毫秒数为：" + (end - start));//1062

	}
}
```

## 数组

> Java中的容器：数组、集合框架。都是在内存中对多个数据的存储。
>
> 注：python中数组元素的下标可以是负数，及从后往前数第几个，而java不行

![1688740438175](Java.assets/1688740438175.png)

**数组的特点：**

- 数组本身是`引用数据类型`，而数组中的元素可以是`任何数据类型`，包括基本数据类型和引用数据类型。
- 创建数组对象会在内存中开辟一整块`连续的空间`。占据的空间的大小，取决于数组的长度和数组中元素的类型。
- 数组中的元素在内存中是依次紧密排列的，有序的。
- 数组，一旦初始化完成，其长度就是确定的。数组的`长度一旦确定，就不能修改`。
- 我们可以直接通过下标(或索引)的方式调用指定位置的元素，速度很快。
- 数组名中引用的是这块连续空间的首地址。

### 一维数组的使用

#### 数组的声明和初始化

```java
  //1、声明数组、数组初始化
        double[] prices;
        prices = new double[]{20.32,43.21,43.22};   //静态初始化：数组变量的赋值与数组元素的赋值操作同时进行。

        //数组的声明和初始化
        //动态初始化：数组变量的赋值与数组元素的赋值操作分开进行。
        String[] foods = new String[4];

//        int[] arr = new int[]{1,2,3,4}; //也对，但可以简写
        int[] arr1 = {1,2,3,4}; //编译器会进行类型判断

        //错误写法 -------声明和初始化分开写时，编译就无法进行类型推断，就会报错
//        prices = {20.32,43.21,43.22};
//        int[] arr2 = new int[3]{1,2,3};  //错误：不能静态和动态结合使用
```

#### 遍历

```java
//2、数组的遍历
        for (int i = 0; i < prices.length; i++) {
            System.out.println(prices[i]);
        }
```

#### 数组元素的默认值

![1688742582248](Java.assets/1688742582248.png)

### 一维数组内存分析

![1688742729968](Java.assets/1688742729968.png)

| 区域名称   | 作用                                                         |
| ---------- | ------------------------------------------------------------ |
| `虚拟机栈` | 用于存储正在执行的每个Java方法的局部变量表等。局部变量表存放了编译期可知长度<br/>的各种基本数据类型、对象引用，方法执行完，自动释放。 |
| `堆内存`   | 存储对象（包括数组对象），new来创建的，都存储在堆内存。      |
| `方法区`   | 存储已被虚拟机加载的类信息、常量、（静态变量）、即时编译器编译后的代码等数据。 |
| 本地方法栈 | 当程序中调用了native的本地方法时，本地方法执行期间的内存区域 |
| 程序计数器 | 程序计数器是CPU中的寄存器，它包含每一个线程下一条要执行的指令的地址 |

#### 例一

> * 首先main方法进栈，被称为一个栈帧
> * 按常理来讲，args参数先进栈帧，此处省略
> * main方法结束后，内存空间内就被没收了
> * GC并不是马上就进行垃圾回收

```java
public static void main(String[] args) {
	int[] arr1 = new int[4];
        arr1[0] = 10;
        arr1[2] = 20;
    
        String[] arr2 = new String[2];
        arr2[1] = "周杰伦";
        arr2 = new String[3];
}
```

以下是内存中的变化

![1688743510635](Java.assets/1688743510635.png)

![1688743550687](Java.assets/1688743550687.png)

![1688743610506](Java.assets/1688743610506.png)

![1688743661380](Java.assets/1688743661380.png)

#### 例二

![1688744158552](Java.assets/1688744158552.png)

### 二维数组的使用

![1688780752737](Java.assets/1688780752737.png)

#### 二维数组的声明与初始化

> 动态初始化方式2：(比如：`int[][] arr = new int[3][]`)
>
> * 1）外层元素，默认存储null
> * 2）内层元素，不存在的。如果调用会报错（NullPointerException）

```java
//方式1：静态初始化:数组变量的赋值和数组元素的赋值同时进行
		int[][] arr2 = new int[][]{{1,2,3},{4,5},{6,7,8,9}};

		//方式2：动态初始化1:数组变量的赋值和数组元素的赋值分开进行
		String[][] arr3 = new String[3][4];
		//方式2：动态初始化2
		double[][] arr4 = new double[2][];

		//其它正确的写法：
		int arr5[][] = new int[][]{{1,2,3},{4,5},{6,7,8,9}};
		int[] arr6[] = new int[][]{{1,2,3},{4,5},{6,7,8,9}};
		int arr7[][] = {{1,2,3},{4,5},{6,7,8,9}}; //类型推断
		String arr8[][] = new String[3][4];

		//错误的写法
//		int[][] arr9 = new int[3][3]{{1,2,3},{4,5,6},{7,8,9}};
//		int[3][3] arr10 = new int[][]{{1,2,3},{4,5,6},{7,8,9}};
//		int[][] arr11 = new int[][10];

		//调用外层元素
		System.out.println(arr2[0]);//[I@776ec8df
```

#### 二维数组的遍历

```java
		for (int i = 0; i < arr2.length; i++) {
			for(int j = 0;j < arr2[i].length;j++){
				System.out.print(arr2[i][j] + "\t");
			}
			System.out.println();
		}
```

### 二维数组的内存解析

![1688745121008](Java.assets/1688745121008.png)

#### 举例一

![1688745187180](Java.assets/1688745187180.png)

#### 举例二

![1688745255892](Java.assets/1688745255892.png)

### 数组的应用

#### 杨辉三角

![1688745569180](Java.assets/1688745569180.png)

```java
public class YangHuiTest {
    public static void main(String[] args) {

        //1. 创建二维数组
        int[][] yangHui = new int[10][];

        //2.使用循环结构，初始化外层数组元素
        for(int i = 0;i < yangHui.length;i++){
            yangHui[i] = new int[i + 1];
            //3. 给数组的元素赋值
            //3.1 给数组每行的首末元素赋值为1
            yangHui[i][0] = yangHui[i][i] = 1;
            //3.2 给数组每行的非首末元素赋值
            //if(i >= 2){
                for(int j = 1;j < yangHui[i].length - 1;j++){ //j从每行的第2个元素开始，到倒数第2个元素结束
                    yangHui[i][j] = yangHui[i - 1][j] + yangHui[i - 1][j - 1];
                }
            //}

        }
        //遍历二维数组
        for (int i = 0; i < yangHui.length; i++) {
            for (int j = 0; j < yangHui[i].length; j++) {
                System.out.print(yangHui[i][j] + "\t");
            }
            System.out.println();
        }


    }
}
```

#### 数组元素的反转

> 不论数组长度是奇数个还是偶数个，判断条件都是`i < arr.length/2`

![1688745663885](Java.assets/1688745663885.png)

```java
public class ArrayExer05 {
    public static void main(String[] args) {
        int[] arr = new int[]{34,54,3,2,65,7,34,5,76,34,67};

        //遍历
        for (int i = 0; i < arr.length; i++) {
            System.out.print(arr[i] + "\t");
        }
        System.out.println();

        //反转操作
        //方式1：
//        for(int i = 0;i < arr.length/2;i++){
//            //交互arr[i] 与 arr[arr.length - 1 - i]位置的元素
//            int temp = arr[i];
//            arr[i] = arr[arr.length - 1 - i];
//            arr[arr.length - 1 - i] = temp;
//        }
        //方式2：
        for(int i = 0,j = arr.length - 1;i < j;i++,j--){
            //交互arr[i] 与 arr[j]位置的元素
            int temp = arr[i];
            arr[i] = arr[j];
            arr[j] = temp;
        }

        //方式3：不推荐
//        int[] newArr = new int[arr.length];
//        for(int i = arr.length - 1;i >= 0;i--){
//            newArr[arr.length - 1 - i] = arr[i];
//        }

//        arr = newArr;

        //遍历
        for (int i = 0; i < arr.length; i++) {
            System.out.print(arr[i] + "\t");
        }
    }
}
```

#### 数组的扩容与缩容

##### 数组的扩容

题目：现有数组 int[] arr = new int[]{1,2,3,4,5}; ，现将数组长度扩容1倍，并将10,20,30三个数据添加到arr数组中，如何操作？

```java
public class ArrTest1 {
    public static void main(String[] args) {

        int[] arr = new int[]{1,2,3,4,5};
        int[] newArr = new int[arr.length << 1];

        for(int i = 0;i < arr.length;i++){
            newArr[i] = arr[i];
        }

        newArr[arr.length] = 10;
        newArr[arr.length + 1] = 20;
        newArr[arr.length + 2] = 30;

        arr = newArr;

        //遍历arr
        for (int i = 0; i < arr.length; i++) {
            System.out.println(arr[i]);
        }
    }
}
```

##### 数组的缩容

题目：现有数组 int[] arr={1,2,3,4,5,6,7}。现需删除数组中索引为4的元素。

```java
public class ArrTest2 {
    public static void main(String[] args) {

        int[] arr = {1, 2, 3, 4, 5, 6, 7};
        //删除数组中索引为4的元素
        int delIndex = 4;
        //方案1：
        /*//创建新数组
        int[] newArr = new int[arr.length - 1];

        for (int i = 0; i < delIndex; i++) {
            newArr[i] = arr[i];
        }
        for (int i = delIndex + 1; i < arr.length; i++) {
            newArr[i - 1] = arr[i];
        }

        arr = newArr;
        for (int i = 0; i < arr.length; i++) {
            System.out.println(arr[i]);
        }*/

        //方案2：
        for (int i = delIndex; i < arr.length - 1; i++) {
            arr[i] = arr[i + 1];
        }
        arr[arr.length - 1] = 0;

        for (int i = 0; i < arr.length; i++) {
            System.out.println(arr[i]);
        }
    }
}
```

#### 数组元素的查找

##### 顺序查找

```java
public class TestArrayOrderSearch {
    //查找value第一次在数组中出现的index
    public static void main(String[] args){
        int[] arr = {4,5,6,1,9};
        int value = 1;
        int index = -1;

        for(int i=0; i<arr.length; i++){
            if(arr[i] == value){
                index = i;
                break;
            }
        }

        if(index==-1){
            System.out.println(value + "不存在");
        }else{
            System.out.println(value + "的下标是" + index);
        }
    }
}
```

##### 二分查找

![1688781321992](Java.assets/1688781321992.png)

![1688781410584](Java.assets/1688781410584.png)

```java
//二分法查找：要求此数组必须是有序的。
int[] arr3 = new int[]{-99,-54,-2,0,2,33,43,256,999};
boolean isFlag = true;
int value = 256;
//int value = 25;
int head = 0;//首索引位置
int end = arr3.length - 1;//尾索引位置
while(head <= end){
    int middle = (head + end) / 2;
    if(arr3[middle] == value){
        System.out.println("找到指定的元素，索引为：" + middle);
        isFlag = false;
        break;
    }else if(arr3[middle] > value){
        end = middle - 1;
    }else{//arr3[middle] < value
        head = middle + 1;
    }
}

if(isFlag){
    System.out.println("未找打指定的元素");
}
```

#### 数组元素的排序

##### 衡量排序算法的优劣

- `时间复杂度`：分析关键字的比较次数和记录的移动次数

- 常见的算法时间复杂度由小到大依次为：Ο(1)＜Ο(log2n)＜Ο(n)＜Ο(nlog2n)＜Ο(n<sup>2</sup>)＜Ο(n<sup>3</sup>)＜…＜Ο(2<sup>n</sup>)＜Ο(n!)<O(n<sup>n</sup>)

- `空间复杂度`：分析排序算法中需要多少辅助内存

  ```
  一个算法的空间复杂度S(n)定义为该算法所耗费的存储空间，它也是问题规模n的函数。
  ```

- `稳定性`：若两个记录A和B的关键字值相等，但排序后A、B的先后次序保持不变，则称这种排序算法是稳定的。

  ![image-20211222113701365](Java.assets/image-20211222113701365.png)

#####  排序算法概述

- **排序算法分类：内部排序和外部排序**
  - `内部排序`：整个排序过程不需要借助于外部存储器（如磁盘等），所有排序操作都在内存中完成。
  - `外部排序`：参与排序的数据非常多，数据量非常大，计算机无法把整个排序过程放在内存中完成，必须借助于外部存储器（如磁盘）。外部排序最常见的是多路归并排序。可以认为外部排序是由多次内部排序组成。
- **十大内部排序算法**

​       数组的排序算法很多，实现方式各不相同，时间复杂度、空间复杂度、稳定性也各不相同：

![image-20211222111142684](Java.assets/image-20211222111142684.png)

常见时间复杂度所消耗的时间从小到大排序：

**O(1) < O(logn) < O(n) < O(nlogn) < O(n^2) < O(n^3) < O(2^n) < O(n!) < O(n^n)**

注意，经常将以2为底n的对数简写成logn。

![image-20220824003440106](Java.assets/image-20220824003440106.png)

##### 冒泡排序（Bubble Sort）

<img src="../../../快捷方式/ssg-document/Java/相关资料/第05章_数组/images/image-20220516094637228.png" alt="image-20220516094637228" style="zoom:67%;" />

**排序思想：**

1. 比较相邻的元素。如果第一个比第二个大（升序），就交换他们两个。
2. 对每一对相邻元素作同样的工作，从开始第一对到结尾的最后一对。这步做完后，最后的元素会是最大的数。
3. 针对所有的元素重复以上的步骤，除了最后一个。
4. 持续每次对越来越少的元素重复上面的步骤，直到没有任何一对数字需要比较为止。

![BubbleSort](Java.assets/BubbleSort.png)

**动态演示：**https://visualgo.net/zh/sorting

```java
/*
1、冒泡排序（最经典）
思想：每一次比较“相邻（位置相邻）”元素，如果它们不符合目标顺序（例如：从小到大），
     就交换它们，经过多轮比较，最终实现排序。
	 （例如：从小到大）	 每一轮可以把最大的沉底，或最小的冒顶。
	 
过程：arr{6,9,2,9,1}  目标：从小到大

第一轮：
	第1次，arr[0]与arr[1]，6>9不成立，满足目标要求，不交换
	第2次，arr[1]与arr[2]，9>2成立，不满足目标要求，交换arr[1]与arr[2] {6,2,9,9,1}
	第3次，arr[2]与arr[3]，9>9不成立，满足目标要求，不交换
	第4次，arr[3]与arr[4]，9>1成立，不满足目标要求，交换arr[3]与arr[4] {6,2,9,1,9}
	第一轮所有元素{6,9,2,9,1}已经都参与了比较，结束。
	第一轮的结果：第“一”最大值9沉底（本次是后面的9沉底），即到{6,2,9,1,9}元素的最右边

第二轮：
	第1次，arr[0]与arr[1]，6>2成立，不满足目标要求，交换arr[0]与arr[1] {2,6,9,1,9}
	第2次，arr[1]与arr[2]，6>9不成立，满足目标要求，不交换
	第3次：arr[2]与arr[3]，9>1成立，不满足目标要求，交换arr[2]与arr[3] {2,6,1,9,9}
	第二轮未排序的所有元素 {6,2,9,1}已经都参与了比较，结束。
	第二轮的结果：第“二”最大值9沉底（本次是前面的9沉底），即到{2,6,1,9}元素的最右边
第三轮：
	第1次，arr[0]与arr[1]，2>6不成立，满足目标要求，不交换
	第2次，arr[1]与arr[2]，6>1成立，不满足目标要求，交换arr[1]与arr[2] {2,1,6,9,9}
	第三轮未排序的所有元素{2,6,1}已经都参与了比较，结束。
	第三轮的结果：第三最大值6沉底，即到 {2,1,6}元素的最右边
第四轮：
	第1次，arr[0]与arr[1]，2>1成立，不满足目标要求，交换arr[0]与arr[1] {1,2,6,9,9}
	第四轮未排序的所有元素{2,1}已经都参与了比较，结束。
	第四轮的结果：第四最大值2沉底，即到{1,2}元素的最右边

*/
public class Test19BubbleSort{
    public static void main(String[] args){
        int[] arr = {6,9,2,9,1};

        //目标：从小到大
        //冒泡排序的轮数 = 元素的总个数 - 1
        //轮数是多轮，每一轮比较的次数是多次，需要用到双重循环，即循环嵌套
        //外循环控制 轮数，内循环控制每一轮的比较次数和过程
        for(int i=1; i<arr.length; i++){ //循环次数是arr.length-1次/轮
			/*
			假设arr.length=5
			i=1,第1轮，比较4次
				arr[0]与arr[1]
				arr[1]与arr[2]
				arr[2]与arr[3]
				arr[3]与arr[4]
				
				arr[j]与arr[j+1]，int j=0;j<4; j++
				
			i=2,第2轮，比较3次
				arr[0]与arr[1]
				arr[1]与arr[2]
				arr[2]与arr[3]
				
				arr[j]与arr[j+1]，int j=0;j<3; j++
				
			i=3,第3轮，比较2次
				arr[0]与arr[1]
				arr[1]与arr[2]
				
				arr[j]与arr[j+1]，int j=0;j<2; j++
			i=4,第4轮，比较1次
				arr[0]与arr[1]
			
				arr[j]与arr[j+1]，int j=0;j<1; j++
				
				int j=0; j<arr.length-i; j++
			*/
            for(int j=0; j<arr.length-i; j++){
                //希望的是arr[j] < arr[j+1]
                if(arr[j] > arr[j+1]){
                    //交换arr[j]与arr[j+1]
                    int temp = arr[j];
                    arr[j] = arr[j+1];
                    arr[j+1] = temp;
                }
            }
        }

        //完成排序，遍历结果
        for(int i=0; i<arr.length; i++){
            System.out.print(arr[i]+"  ");
        }
    }
}
```

**冒泡排序优化**

```java
/*
思考：冒泡排序是否可以优化
*/
class Test19BubbleSort2{
	public static void main(String[] args) {
        int[] arr = {1, 3, 5, 7, 9};

        //从小到大排序
        for (int i = 0; i < arr.length - 1; i++) {
            boolean flag = true;//假设数组已经是有序的
            for (int j = 0; j < arr.length - 1 - i; j++) {
                //希望的是arr[j] < arr[j+1]
                if (arr[j] > arr[j + 1]) {
                    //交换arr[j]与arr[j+1]
                    int temp = arr[j];
                    arr[j] = arr[j + 1];
                    arr[j + 1] = temp;

                    flag = false;//如果元素发生了交换，那么说明数组还没有排好序
                }
            }
            if (flag) {
                break;
            }
        }

        //完成排序，遍历结果
        for (int i = 0; i < arr.length; i++) {
            System.out.print(arr[i] + "  ");
        }
    }
}
```

#####  快速排序

快速排序（Quick Sort）由`图灵奖`获得者`Tony Hoare`发明，被列为`20世纪十大算法之一`，是迄今为止所有内排序算法中速度最快的一种，快速排序的时间复杂度为O(nlog(n))。

快速排序通常明显比同为O(nlogn)的其他算法更快，因此常被采用，而且快排采用了分治法的思想

排序思想：

1. 从数列中挑出一个元素，称为"基准"（pivot），
2. 重新排序数列，所有元素比基准值小的摆放在基准前面，所有元素比基准值大的摆在基准的后面（相同的数可以到任一边）。在这个分区结束之后，该基准就处于数列的中间位置。这个称为分区（partition）操作。
3. 递归地（recursive）把小于基准值元素的子数列和大于基准值元素的子数列排序。
4. 递归的最底部情形，是数列的大小是零或一，也就是永远都已经被排序好了。虽然一直递归下去，但是这个算法总会结束，因为在每次的迭代（iteration）中，它至少会把一个元素摆到它最后的位置去。

**动态演示：**https://visualgo.net/zh/sorting

图示1：

![image-20220317235922776](Java.assets/image-20220317235922776.png)

图示2：

第一轮操作：

![image-20221117205612230](Java.assets/image-20221117205612230.png)

第二轮操作：

![image-20221117205719427](Java.assets/image-20221117205719427.png)



##### 内部排序性能比较与选择

> 快速排序相比同等级的排序更快

- 性能比较
  - **从平均时间而言**：快速排序最佳。但在最坏情况下时间性能不如堆排序和归并排序。
  - **从算法简单性看**：由于直接选择排序、直接插入排序和冒泡排序的算法比较简单，将其认为是简单算法。对于Shell排序、堆排序、快速排序和归并排序算法，其算法比较复杂，认为是复杂排序。
  - **从稳定性看**：直接插入排序、冒泡排序和归并排序时稳定的；而直接选择排序、快速排序、 Shell排序和堆排序是不稳定排序
  - **从待排序的记录数n的大小看**，n较小时，宜采用简单排序；而n较大时宜采用改进排序。
- 选择
  - 若n较小(如n≤50)，可采用直接插入或直接选择排序。
    当记录规模较小时，直接插入排序较好；否则因为直接选择移动的记录数少于直接插入，应选直接选择排序为宜。
  - 若文件初始状态基本有序(指正序)，则应选用直接插入、冒泡或随机的快速排序为宜；
  - 若n较大，则应采用时间复杂度为O(nlgn)的排序方法：快速排序、堆排序或归并排序。

### Arrays工具类的使用

java.util.Arrays类即为操作数组的工具类，包含了用来操作数组（比如排序和搜索）的各种方法。 比如：

- `数组元素拼接`
  - static String toString(int[] a) ：字符串表示形式由数组的元素列表组成，括在方括号（"[]"）中。相邻元素用字符 ", "（逗号加空格）分隔。形式为：[元素1，元素2，元素3。。。]
  - static String toString(Object[] a) ：字符串表示形式由数组的元素列表组成，括在方括号（"[]"）中。相邻元素用字符 ", "（逗号加空格）分隔。元素将自动调用自己从Object继承的toString方法将对象转为字符串进行拼接，如果没有重写，则返回类型@hash值，如果重写则按重写返回的字符串进行拼接。
- `数组排序`
  - static void sort(int[] a) ：将a数组按照从小到大进行排序
  - static void sort(int[] a, int fromIndex, int toIndex) ：将a数组的[fromIndex, toIndex)部分按照升序排列
  - static void sort(Object[] a) ：根据元素的自然顺序对指定对象数组按升序进行排序。
  - static <T> void sort(T[] a, Comparator<? super T> c) ：根据指定比较器产生的顺序对指定对象数组进行排序。
- `数组元素的二分查找`
  - static int binarySearch(int[] a, int key)  、static int binarySearch(Object[] a, Object key) ：要求数组有序，在数组中查找key是否存在，如果存在返回第一次找到的下标，不存在返回负数。
- `数组的复制`
  - static int[] copyOf(int[] original, int newLength)  ：根据original原数组复制一个长度为newLength的新数组，并返回新数组
  - static <T> T[] copyOf(T[] original,int newLength)：根据original原数组复制一个长度为newLength的新数组，并返回新数组
  - static int[] copyOfRange(int[] original, int from, int to) ：复制original原数组的[from,to)构成新数组，并返回新数组
  - static <T> T[] copyOfRange(T[] original,int from,int to)：复制original原数组的[from,to)构成新数组，并返回新数组
- `比较两个数组是否相等`
  - static boolean equals(int[] a, int[] a2) ：比较两个数组的长度、元素是否完全相同
  - static boolean equals(Object[] a,Object[] a2)：比较两个数组的长度、元素是否完全相同
- `填充数组`
  - static void fill(int[] a, int val) ：用val值填充整个a数组
  - static void fill(Object[] a,Object val)：用val对象填充整个a数组
  - static void fill(int[] a, int fromIndex, int toIndex, int val)：将a数组[fromIndex,toIndex)部分填充为val值
  - static void fill(Object[] a, int fromIndex, int toIndex, Object val) ：将a数组[fromIndex,toIndex)部分填充为val对象

举例：java.util.Arrays类的sort()方法提供了数组元素排序功能：

```java
import java.util.Arrays;
public class SortTest {
	public static void main(String[] args) {
		int[] arr = {3, 2, 5, 1, 6};
        System.out.println("排序前" + Arrays.toString(arr));
        Arrays.sort(arr);
        System.out.println("排序后" + Arrays.toString(arr));
	}
}

```

## 面向对象

### POP vs OOP

面向过程（POP）：       

* 以`函数`为组织单位。
* 是一种“`执行者思维`”，适合解决简单问题。扩展能力差、后期维护难度较大。

面向对象（OOP）:

* 以`类`为组织单位。每种事物都具备自己的`属性`和`行为/功能`。
* 是一种“`设计者思维`”，适合解决复杂问题。代码扩展性强、可维护性高。

二者关系：

* 相辅相成的。面向对象离不开面向过程

### 类

#### 类的定义

> 注：函数在sql里面也被称为过程
>
> * 成员变量有默认值

```java
[修饰符] class 类名{		//类的修饰符只能是public或缺省
	属性声明;	//属性、成员变量、field（字段、域）
    静态代码块	
    普通代码块
    构造器
	方法声明	//（成员）方法、函数、method
    内部类
}
```

#### 对象的创建

```java
//方式1：给创建的对象命名
//把创建的对象用一个引用数据类型的变量保存起来，这样就可以反复使用这个对象了
类名 对象名 = new 类名();

//方式2：
new 类名()//也称为匿名对象
```

匿名对象

* 可以不定义对象的句柄，而直接调用这个对象的方法。这样的对象叫做匿名对象
  * 如：new Person().shout();
* 使用情况
  * 如果一个对象只需要进行一次方法调用，那么就可以使用匿名对象。
  * 我们经常将匿名对象作为实参传递给一个方法调用。

#### 对象创建的内存分析

##### 创建类的一个对象，属性赋值

![1689230371842](Java.assets/1689230371842.png)

##### 创建类的多个对象，属性赋值

> 此时的p1，p3 两个变量指向了堆空间中的同一个对象实体。（或p1,p3保存的地址值相同）如果通过其中某一个对象变量修改对象的属性时，会影响另一个对象变量此属性的值。

![1689230429428](Java.assets/1689230429428.png)

#### 成员变量（隶属对象）

![1689231077881](Java.assets/1689231077881.png)

![1689231106329](Java.assets/1689231106329.png)

##### 成员变量vs局部变量的不同点

① 类中声明的位置的不同：    

* 属性：声明在类内，方法外的变量    
* 局部变量：声明方法、构造器内部的变量

② 在内存中分配的位置不同：    

* 属性：随着对象的创建，存储在堆空间中。   
* 局部变量：存储在栈空间中

③ 生命周期：    

* 属性：随着对象的创建而创建，随着对象的消亡而消亡。    
* 局部变量：随着方法对应的栈帧入栈，局部变量会在栈中分配；随着方法对应的栈帧出栈，局部变量消亡。

④ 作用域：    

* 属性：在整个类的内部都是有效的    
* 局部变量：仅限于声明此局部变量所在的方法（或构造器、代码块）中

⑤ 是否可以有权限修饰符进行修饰：

* 属性，可以使用权限修饰符进行修饰。 
* 局部变量，不能使用任何权限修饰符进行修饰的。

⑥ 是否有默认值：

![1689232163936](Java.assets/1689232163936.png)

* 属性:都有默认初始化值。
* 局部变量：都没有默认初始化值。

##### 对象数组

![1689234511711](Java.assets/1689234511711.png)

![1689234607766](Java.assets/1689234607766.png)

![1689234633907](Java.assets/1689234633907.png)

##### 实例变量的赋值顺序

> * ① 默认初始化
> * ② 显式初始化  或 ⑤ 代码块中初始化
> * ③ 构造器中初始化
> * ④ 有了对象以后，通过"对象.属性"或"对象.方法"的方法进行赋值

![1689519557795](Java.assets/1689519557795.png)

![1689519729055](Java.assets/1689519729055.png)

#### 构造器

> 用来new对象，并在new对象的时候为实例变量赋值。

**构造器的语法**

```java
[修饰符] class 类名{
	[修饰符] 构造器名(){
		// 实例初始化代码
	}
	[修饰符] 构造器名(参数列表){
		// 实例初始化代码
	}
}
```

**使用说明：**

* 构造器名必须与它所在的类名必须相同。
* 它没有返回值，所以不需要返回值类型，也不需要void。
* 构造器的修饰符只能是权限修饰符，不能被其他任何修饰。比如，不能被static、final、synchronized、abstract、native修饰，不能有return语句返回值。

**注：**

* 当没有显式的声明类中的构造器时，系统会默认提供一个无参的构造器并且该构造器的修饰符默认与类的修饰符相同
* 当显式的定义类的构造器以后，系统就不再提供默认的无参的构造器了。
3. 在类中，至少会存在一个构造器。
4. 构造器是可以重载的。

#### 成员方法（隶属对象）

> 注：
>
> * 方法内不能定义方法
> * 方法必须被定义在类内

##### 成员方法声明

```java
[权限修饰符] 返回值类型 方法名([形参列表])[throws 异常列表]{
	方法体的功能代码
}
```

##### 对象调用方法的内存解析

![1689233805833](Java.assets/1689233805833.png)



##### return

作用

* 结束一个方法
* 结束一个方法的同时，可以返回数据给方法的调用者 (方法声明中如果有返回值类型，则方法内需要搭配return使用）

注：

* return后面不能声明执行语句。

##### 方法的重载

> 注：只有返回类型不同也不行

**两同一不同**

* 两同：同一个类、相同的方法名
* 一不同：参数列表不同。① 参数个数不同 ② 参数类型不同

**举例**

* Arrays类中sort(xxx[] arr)、binarySearch(xxx[] arr,xxx)、equals(xxx[] ,yyy[])

**编译器是如何确定调用的某个具体的方法呢？**

* 先通过方法名确定了一波重载的方法，进而通过不同的形参列表，确定具体的某一个方法。

* 如果涉及到自动类型提升呢？
  * ![1689235911766](Java.assets/1689235911766.png)
  * ![1689235928835](Java.assets/1689235928835.png)

##### 可变形参的方法

> 注：在方法体内，把形参当作一个数组即可
>
> * 可变个数的形参必须是在最后一个
> * 可变个数的形参最多在一个方法的形参列表中出现一次

格式：`(参数类型 ... 参数名)`

```java
public void print(int ... nums){
    System.out.println("1111");

    for (int i = 0; i < nums.length; i++) {
        System.out.println(nums[i]);
    }
}
```

注：

![1689236553642](Java.assets/1689236553642.png)

##### 方法的值传递机制

> 本质上java的参数传递机制是：值传递。

**实参给形参赋值的过程**

* 如果形参是基本数据类型的变量，则将实参保存的数据值赋给形参。
* 如果形参是引用数据类型的变量，则将实参保存的地址值赋给形参。

**基本数据类型变量的传递**

![1689237542776](Java.assets/1689237542776.png)

**引用数据类型变量的传递**

![1689237615787](Java.assets/1689237615787.png)

##### 方法的递归

**使用说明**

* 递归方法包含了一种`隐式的循环`。
* 递归方法会`重复执行`某段代码，但这种重复执行无须循环控制。
* 递归一定要向`已知方向`递归，否则这种递归就变成了无穷递归，停不下来，类似于`死循环`。最终发生`栈内存溢出`。

![1689238177798](Java.assets/1689238177798.png)

##### 成员方法的重写

> @Override使用说明：
>
> 写在方法上面，用来检测是不是满足重写方法的要求。这个注解就算不写，只要满足要求，也是正确的方法覆盖重写。建议保留，这样编译器可以帮助我们检查格式，另外也可以让阅读源代码的程序员清晰的知道这是一个重写的方法
>
> 注：
>
> 可以对成员方法重写，但不可以对成员变量重写。
> 编译器找方法的过程：现在本地找，找不到直接在父类中去找

方法重写的要求

1. 子类重写的方法`必须`和父类被重写的方法具有相同的`方法名称`、`参数列表`。
2. 子类重写的方法的返回值类型`不能大于`父类被重写的方法的返回值类型。（例如：Student < Person）。

> 注意：如果返回值类型是基本数据类型和void，那么必须是相同

3. 子类重写的方法使用的访问权限`不能小于`父类被重写的方法的访问权限。（public > protected > 缺省 > private）

> 注意：① 父类私有方法不能重写   ② 跨包的父类缺省的方法也不能重写

4. 子类方法抛出的异常不能大于父类被重写方法的异常（针对于编译时异常来说）

#### 代码块

> 没必要写多个同类型的代码块，即使写了多个，编译后的字节码文件也还是会合并的
>
> 初始化赋值一行搞不定时，就只能通过代码块的方式进行初始化赋值

##### 静态代码块（static）

* 随着类的加载而执行
* 由于类的加载只会执行一次，进而静态代码块的执行，也只会执行一次
* 作用：用来初始化类的信息
* 内部可以声明变量、调用属性或方法、编写输出语句等操作。
* 静态代码块的执行要先于非静态代码块的执行
* 如果声明有多个静态代码块，则按照声明的先后顺序执行
* 静态代码块内部只能调用静态的结构（即静态的属性、方法），不能调用非静态的结构（即非静态的属性、方法）

##### 非静态代码块

* 随着对象的创建而执行
* 每创建当前类的一个实例，就会执行一次非静态代码块
* 作用：用来初始化对象的信息
* 内部可以声明变量、调用属性或方法、编写输出语句等操作。
* 如果声明有多个非静态代码块，则按照声明的先后顺序执行
* 非静态代码块内部可以调用静态的结构（即静态的属性、方法），也可以调用非静态的结构（即非静态的属性、方法）

#### 内部类

> 内部类一般只供外部类使用

![1689611504964](Java.assets/1689611504964.png)

##### 成员内部类

###### 语法格式

```java
[修饰符] class 外部类{
    [其他修饰符] [static] class 内部类{
    }
}
```

**理解**

* 成员内部类作为`类的成员的角色`：
  - 和外部类不同，Inner class还可以声明为private或protected；
  - 可以调用外部类的结构。（注意：在静态内部类中不能使用外部类的非静态成员）
  - Inner class 可以声明为static的，但此时就不能再使用外层类的非static的成员变量；
* 成员内部类作为`类的角色`：
  - 可以在内部定义属性、方法、构造器等结构
  - 可以继承自己的想要继承的父类，实现自己想要实现的父接口们，和外部类的父类和父接口无关
  - 可以声明为abstract类 ，因此可以被其它的内部类继承
  - 可以声明为final的，表示不能被继承
  - 编译以后生成OuterClass$InnerClass.class字节码文件（也适用于局部内部类）

**注意**

* 成员内部类可以直接使用外部类的所有成员，包括私有的数据（注意静态与非静态的使用）

###### 创建成员内部类对象

* 实例化静态内部类

  ```java
  外部类名.静态内部类名 变量 = 外部类名.静态内部类名();
  变量.非静态方法();
  ```

* 实例化非静态内部类

  ```java
  外部类名 变量1 = new 外部类();
  外部类名.非静态内部类名 变量2 = 变量1.new 非静态内部类名();
  变量2.非静态方法();
  ```

##### 局部内部类

![1689613070120](Java.assets/1689613070120.png)

###### 非匿名局部内部类

语法格式：

```java
[修饰符] class 外部类{
    [修饰符] 返回值类型  方法名(形参列表){
            [final/abstract] class 内部类{
    	}
    }    
}
```

- 编译后有自己的独立的字节码文件，只不过在内部类名前面冠以外部类名、$符号、编号。
  - 这里有编号是因为同一个外部类中，不同的方法中存在相同名称的局部内部类

- 和成员内部类不同的是，它前面不能有权限修饰符等
- 局部内部类如同局部变量一样，有作用域
- 局部内部类中是否能访问外部类的非静态的成员，取决于所在的方法

###### 匿名内部类

```java
new 父类([实参列表]){
    重写方法...
}
```

```java
new 父接口(){
    重写方法...
}
```

##### 例子

```java
public class OuterClassTest1 {

    //说明：局部内部类的使用
    public void method1(){
        //局部内部类
        class A{
           //可以声明属性、方法等

        }

    }


    //开发中的场景
    public Comparable getInstance(){

        //提供了实现了Comparable接口的类
        //方式1：提供了接口的实现类的对象
//        class MyComparable implements Comparable{
////
//            @Override
//            public int compareTo(Object o) {
//                return 0;
//            }
//        }
//
//        MyComparable m = new MyComparable();
//        return m;


        //方式2：提供了接口的实现类的匿名对象
//        class MyComparable implements Comparable{
//
//            @Override
//            public int compareTo(Object o) {
//                return 0;
//            }
//        }
//
//        return new MyComparable();

        //方式3：提供了接口的匿名实现类的对象
//        Comparable c = new Comparable(){
//            @Override
//            public int compareTo(Object o) {
//                return 0;
//            }
//        };
//        return c;

        //方式4：提供了接口的匿名实现类的匿名对象
        return new Comparable(){
            @Override
            public int compareTo(Object o) {
                return 0;
            }
        };

    }
}
```



### 接口

> 接口内部结构的说明
>
> * 属性：必须使用public static final修饰
>   * 可以省略public static final这三个关键字，默认修饰符就是这个三个关键字
> * 方法：
>   * jdk8之前：声明抽象方法，修饰为public abstract
>     * 可以省略public abstract
>   * jdk8:可以声明静态方法、默认方法
>   * jdk9:可以声明私有方法
> * 注：不可以声明构造器、代码块等

#### 接口的声明格式

```java
[修饰符] interface 接口名{
    //接口的成员列表：
    // 公共的静态常量
    // 公共的抽象方法
    
    // 公共的默认方法（JDK1.8以上）
    // 公共的静态方法（JDK1.8以上）
    // 私有方法（JDK1.9以上）	一般给自己的默认方法进行调用
}
```

#### 类与接口的关系

* 类可以实现多个接口。
* 类针对于接口的多实现，一定程度上就弥补了类的单继承的局限性。
* 类必须将实现的接口中的所有的抽象方法都重写（或实现），方可实例化。否则，此实现类必须声明为抽象类。

#### 接口与抽象类的对比

* 共性：
  * 都可以声明抽象方法
  * 都不能实例化
* 不同：
  * 抽象类一定有构造器。接口没有构造器
  * 类与类之间继承关系，类与接口之间是实现关系，接口与接口之间是多继承关系

![1689610313512](Java.assets/1689610313512.png)

#### 易忽略的点

* 接口中声明的静态方法只能被接口来调用，不能使用其实现类进行调用。

* 接口中声明的默认方法可以被实现类继承，实现类在没有重写此方法的情况下，默认调用接口中声明的默认方法。如果实现类重写了此方法，则调用的是自己重写的方法。

* 类实现了两个接口，而两个接口中定义了同名同参数的默认方法。则实现类在没有重写此两个接口默认方法的情况下，会报错。 ---->接口冲突

  * 要求:此时实现类必须要重写接口中定义的同名同参数的方法。

* 子类（或实现类）继承了父类并实现了接口。父类和接口中声明了同名同参数的方法。（其中，接口中的方法是默认方法）。默认情况下，子类（或实现类）在没有重写此方法的情况下，调用的是父类中的方法。--->类优先原则

* 如何在子类（或实现类）中调用父类或接口中被重写的方法

  * ```java
    method4();//调用自己类中的方法
    
    super.method4(); //调用父类中的
    
    method3();//调用自己类中的方法
    
    CompareA.super.method3(); //调用接口CompareA中的默认方法
    CompareB.super.method3(); //调用接口CompareB中的默认方法
    ```

  

### 关键字

> 注：`this`和`super`关键字不能和static共用

#### package(包)

> * 一个源文件只能有一个声明包的package语句
>
> * package语句作为Java源文件的第一条语句出现。若缺省该语句，则指定为无名包。
>
> * 包名，属于标识符，满足标识符命名的规则和规范（全部小写）、见名知意
>
>   * 包通常使用所在公司域名的倒置：com.mi.xxx。  -
>
>   * 取包名时不要使用"`java.xx`"包，因为根据类加载机制，jvm会先加载jdk中java包，会出现包冲突的问题
>
>     ![1689238998780](Java.assets/1689238998780.png)
>
> * 包对应于文件系统的目录，package语句中用 “.” 来指明包(目录)的层次，每.一次就表示一层文件目
>   录。
>
> * 同一个包下可以声明多个结构（类、接口），但是不能定义同名的结构（类、接口）。不同的包下
>   可以定义同名的结构（类、接口）

##### 

package，称为包，用于指明该文件中定义的类、接口等结构所在的包。

##### 语法格式

```java
package 顶层包名.子包名;
```

```java
package pack1.pack2; //指定类PackageTest属于包pack1.pack2
public class PackageTest{
	public void display(){
		System.out.println("in method display()");
	}
}
```

#### import

> * import语句，声明在包的声明和类的声明之间。
> * 如果需要导入多个类或接口，那么就并列显式多个import语句即可
> * 如果使用 a.* 导入结构，表示可以导入a包下的所有的结构。举例：可以使用java.util.*的方式，一次性导入util包下所有的类或接口。
> * 如果导入的类或接口是java.lang包下的，或者是当前包下的，则可以省略此import语句。
> * 如果已经导入java.a包下的类，那么如果需要使用a包的子包下的类的话，仍然需要导入。
> * 如果在代码中使用不同包下的同名的类，那么就需要使用类的全类名的方式指明调用的是哪个类。
> * （了解） import static 组合的使用：调用指定类或接口下的静态的属性或方法

```java
import 包名.类名;
```

```java
import pack1.pack2.Test; //import pack1.pack2.*;表示引入pack1.pack2包中的所有结构
public class PackTest{
	public static void main(String args[]){
		Test t = new Test(); //Test类在pack1.pack2包中定义
		t.display();
	}
}
```

#### 权限修饰符

> 不同结构可用的权限修饰符
>
> * 外部类：public、缺省
> * 成员变量、成员方法、构造器、成员内部类：public、protected、缺省、private

| 修饰符    | 本类内部 | 本包内 | 其他包的子类 | 其他包非子类 |
| --------- | -------- | ------ | ------------ | ------------ |
| private   | √        | ×      | ×            | ×            |
| 缺省      | √        | √      | ×            | ×            |
| protected | √        | √      | √            | ×            |
| public    | √        | √      | √            | √            |

#### this

##### this.调用属性或方法

![1689248888030](Java.assets/1689248888030.png)

如果方法的形参与对象的属性同名了，必须使用"this."进行区分。

* 使用this.修饰的变量即为属性（或成员变量）
* 没有使用this.修饰的变量，即为局部变量。

##### this调用构造器

* 格式：`this(形参列表)`
* 可以在类的构造器中，调用当前类中指定的其它构造器
* `this(形参列表)`在构造器中最多声明一个
  * 要求：`this(形参列表)`必须声明在当前构造器的首行
* 如果一个类中声明了n个构造器，则最多有n-1个构造器可以声明有"this(形参列表)"的结构
  * 避免形成死递归

#### super

> 注：应该避免子类声明和父类重名的成员变量

##### 针对方法、构造器内的使用情况

如果出现子类重写了父类的方法或子父类中出现了同名的属性时，

​	则必须使用`super.`的声明，显式的调用父类被重写的方法或父类中声明的同名的属性。

##### super调用父类构造器

* `super(形参列表)`必须声明再构造器首行

* `this(形参列表)`和 `super(形参列表)`只能二选一

* 如果在子类构造器的首行既没有显示调用`this(形参列表)`，也没有显式调用`super(形参列表)`，  则子类此构造器默认调用`super()`，即调用父类中空参的构造器。

* 子类的任何一个构造器中，要么会调用本类中重载的构造器，要么会调用父类的构造器。

  * 在调用子类构造器的过程中，直接或间接的调用到父类的构造器。

    ```
    正因为调用过父类的构造器，我们才会将父类中声明的属性或方法加载到内存中，供子类对象使用
    ```

#### instanceof

* 建议在向下转型之前，使用instanceof进行判断，避免出现类型转换异常

* ```
  格式： a instanceof A : 判断对象a是否是类A的实例
  ```

#### static

> 让类的实例共享一些方法和属性（静态方法、静态变量）
>
> 可以修饰的结构
>
> * 属性、方法; 代码块、内部类；
>
> 总之：静态属于类、非静态属于对象

##### 静态变量与实例变量的对比

* 个数 

  * 静态变量：在内存空间中只有一份，被类的多个对象所共享。
  * 实例变量：类的每一个实例（或对象）都保存着一份实例变量。

* 内存位置 

  * 静态变量：
    * jdk6及之前：存放在方法区。 
    * jdk7及之后：存放在堆空间 
  * 实例变量：存放在堆空间的对象实体中。

* 加载时机

  * 静态变量：随着类的加载而加载，由于类只会加载一次，所以静态变量也只有一份。
  * 实例变量：随着对象的创建而加载。每个对象拥有一份实例变量。

* 调用者

  * 静态变量：可以被类直接调用，也可以使用对象调用。
  * 实例变量：只能使用对象进行调用。

* 判断是否可以调用 ---> 从生命周期的角度解释

  * |      | 类变量 | 实例变量 |
    | ---- | ------ | -------- |
    | 类   | √      | ×        |
    | 对象 | √      | ×        |

* 消亡时机

  * 静态变量：随着类的卸载而消亡
  * 实例变量：随着对象的消亡而消亡

##### 静态方法

> 静态方法内
>
> * 可以调用静态的属性或静态的方法
> * 不可以调用非静态的结构。（比如：属性、方法）
>
> 开发中，常常将工具类中的方法，声明为静态方法。比如：Arrays类、Math类

* 静态方法可以被子类继承，但不能被子类重写。
* 静态方法的调用都只看编译时类型。
* 因为不需要实例就可以访问static方法，因此static方法内部不能有this，也不能有super。如果有重名问题，使用“类名.”进行区别

|      | 类方法 | 实例方法 |
| ---- | ------ | -------- |
| 类   | √      | ×        |
| 对象 | √      | √        |

##### 存储

![1689407159406](Java.assets/1689407159406.png)

![1689407212201](Java.assets/1689407212201.png)

![1689407464763](Java.assets/1689407464763.png)

#### final

> final可以修饰的结构：类、方法、变量
>
> final与static搭配：修饰成员变量时，此成员变量称为：全局常量。
> 			比如：Math的PI

* final修饰类：表示此类不能被继承。

  * 比如：String、StringBuffer、StringBuilder类

* final修饰方法：表示此方法不能被重写

  * 比如：Object类中的getClass()

* final修饰变量：既可以修饰成员变量，也可以修饰局部变量。

  * 此时的"变量"其实就变成了"常量"，意味着一旦赋值，就不可更改。

  * ```
    final修饰成员变量: 有哪些位置可以给成员变量赋值？
    > 显式赋值
    > 代码块中赋值
    > 构造器中赋值
    ```

  * ```
    final修饰局部变量：一旦赋值就不能修改
    > 方法内声明的局部变量：在调用局部变量前，一定需要赋值。而且一旦赋值，就不可更改
    > 方法的形参：在调用此方法时，给形参进行赋值。而且一旦赋值，就不可更改
    ```

#### native

> 表示用的底层C或C++的东西，会链接到相关的ddl库中

#### abstract(抽象类与抽象方法)

> abstract可以用来修饰：类、方法

##### 语法格式

抽象类的语法格式

```java
[权限修饰符] abstract class 类名{
    
}
[权限修饰符] abstract class 类名 extends 父类{
    
}
```

抽象方法的语法格式

```java
[其他修饰符] abstract 返回值类型 方法名([形参列表]);
```



##### 抽象类

* 抽象类不能实例化。
* 抽象类中是包含构造器的，因为子类对象实例化时，需要直接或间接的调用到父类的构造器。
* 抽象类中可以没有抽象方法。反之，抽象方法所在的类，一定是抽象类。

##### 抽象方法

* 抽象方法只有方法的声明，没有方法体。
* 抽象方法其功能是确定的（通过方法的声明即可确定），只是不知道如何具体实现（体现为没有方法体）
* 子类必须重写父类中的所有的抽象方法之后，方可实例化。否则，此子类仍然是一个抽象类。

##### abstract 不能与哪些关键字共用？

* 私有方法不能重写
* 避免静态方法使用类进行调用
* final的方法不能被重写
* final修饰的类不能有子类

### 面向对象特征

#### 封装性

> 理论上：
>
> * 高内聚 ：类的内部数据操作细节自己完成，不允许外部干涉；
> * 低耦合 ：仅暴露少量的方法给外部使用，尽量方便外部调用。
>
> 通俗的讲：
>
> * 把该隐藏的隐藏起来，该暴露的暴露出来。这就是封装性的设计思想。

#### 继承

##### 语法格式

```java
[修饰符] class 类A {
	...
}

[修饰符] class 类B extends 类A {
	...
}
```

类B，称为子类、派生类(derived class)、SubClass

类A，称为父类、超类、基类(base class)、SuperClass

##### 细节

###### 子类会继承父类所有的实例变量和实例方法

> 继承意味着子类的对象除了看子类的类模板还要看父类的类模板

* 对于属性和方法而言，都是从下往上找（从子类向父类找）

###### 子类不能直接访问父类中私有的(private)的成员变量和方法

子类虽会继承父类私有(private)的成员变量，但子类不能对继承的私有成员变量直接进行访问，可通过继承的get/set方法进行访问。如图所示

![1689249395230](Java.assets/1689249395230.png)

###### java只能单继承、不能多继承

###### 默认的父类

##### 案例

![1689397846875](Java.assets/1689397846875.png)

##### 子类对象实例化过程

![1689398015796](Java.assets/1689398015796.png)

![1689398118997](Java.assets/1689398118997.png)

#### 多态

> 虚拟方法的调用，屏蔽了子类特有的属性和方法。
>
> 多态性的应用：虚拟方法的调用（编译看左边，运行看右边）
>
> - 编译时，认为方法是左边声明的父类的类型的方法（即被重写的方法）
> - 执行式，实际执行的是子类重写父类的方法。
>
> 多态性的使用前提：
>
> ​	① 要有类的继承关系 	② 要有方法的重写
>
> 注：方法可以重写，但属性不可以
>
> * 即用父类的引用指向子类对象时，父子类同名属性掉的是父类的属性

![1689399369711](Java.assets/1689399369711.png)

### 引用类型的转换

![1689399209721](Java.assets/1689399209721.png)

### Object类

> * 明确：java.lang.Object
> * object类是所有java类的根父类
> * Object类中声明的结构（属性、方法等）就具有通用性。
>   * Object类中没有声明属性
>   * Object类提供了一个空参的构造器

#### equals()

> 注：如果属性中有引用数据类型，一般也需要重写属性类的equals方法

* 自定义的类在没有重写Object中equals()方法的情况下
  * 调用的就是Object类中声明的equals()，比较两个对象的引用地址是否相同。
* 对于像String、File、Date和包装类等
  * 它们都重写了Object类中的equals()方法，用于比较两个对象的  实体内容是否相等。

![1689402036725](Java.assets/1689402036725.png)

#### toString()

>  平时在调用System.out.println()打印对象引用变量时，其实就调用了对象的toString()

* 自定义的类，在没有重写Object类的toString()的情况下
  * 默认返回的是当前对象的地址值。
* 像String、File、Date或包装类等Object的子类
  * 都重写了Object类的toString()，在调用toString()时，返回当前对象的实体内容。

#### finalize()

> 从jdk9开始标记过时

* 此方法调用的时机：当GC要回收此对象时，调用如下的方法
* 子类重写此方法，可在释放对象前进行某些操作
* finalize()可能导致内部出现循环引用，导致此对象不能被回收。

![1689401814851](Java.assets/1689401814851.png)

#### clone()

```java
//Object类的clone()的使用
public class CloneTest {
	public static void main(String[] args) {
		Animal a1 = new Animal("花花");
		try {
			Animal a2 = (Animal) a1.clone();
			System.out.println("原始对象：" + a1);
			a2.setName("毛毛");
			System.out.println("clone之后的对象：" + a2);
		} catch (CloneNotSupportedException e) {
			e.printStackTrace();
		}
	}
}

class Animal implements Cloneable{
	private String name;

	public Animal() {
		super();
	}

	public Animal(String name) {
		super();
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "Animal [name=" + name + "]";
	}
	
	@Override
	protected Object clone() throws CloneNotSupportedException {
		// TODO Auto-generated method stub
		return super.clone();
	}
	
}
```

### 枚举（Enum）

> 枚举类型本质上也是一种类，只不过是这个类的对象是有限的、固定的几个，不能让用户随意创建。
>
> 具体实现
>
> * 在JDK5.0 之前，需要程序员自定义枚举类型。
> * 在JDK5.0 之后，Java支持`enum`关键字来快速定义枚举类型。

#### 定义枚举类

##### jdk5.0之前

声明方式：

- `私有化`类的构造器，保证不能在类的外部创建其对象
- 在类的内部创建枚举类的实例。声明为：`public static final` ，对外暴露这些常量对象
- 对象如果有`实例变量`，应该声明为`private final`（建议，不是必须），并在构造器中初始化

示例代码：

```java
class Season{
    private final String SEASONNAME;//季节的名称
    private final String SEASONDESC;//季节的描述
    private Season(String seasonName,String seasonDesc){
        this.SEASONNAME = seasonName;
        this.SEASONDESC = seasonDesc;
    }
    public static final Season SPRING = new Season("春天", "春暖花开");
    public static final Season SUMMER = new Season("夏天", "夏日炎炎");
    public static final Season AUTUMN = new Season("秋天", "秋高气爽");
    public static final Season WINTER = new Season("冬天", "白雪皑皑");

    @Override
    public String toString() {
        return "Season{" +
                "SEASONNAME='" + SEASONNAME + '\'' +
                ", SEASONDESC='" + SEASONDESC + '\'' +
                '}';
    }
}
class SeasonTest{
    public static void main(String[] args) {
        System.out.println(Season.AUTUMN);
    }
}
```

##### jdk5.0之后

**声明格式**

```java
【修饰符】 enum 枚举类名{
    常量对象列表
}

【修饰符】 enum 枚举类名{
    常量对象列表;
    
    对象的实例变量列表;
}
```

**要点**

- 枚举类的常量对象列表必须在枚举类的首行，因为是常量，所以建议大写。
- 列出的实例系统会自动添加 public static final 修饰。
- 如果常量对象列表后面没有其他代码，那么“；”可以省略，否则不可以省略“；”。
- 构造是否有参
  - 编译器给枚举类默认提供的是private的无参构造，如果枚举类需要的是无参构造，就不需要声明，写常量对象列表时也不用加参数
  - 如果枚举类需要的是有参构造，需要手动定义，有参构造的private可以省略，调用有参构造的方法就是在常量对象名后面加(实参列表)就可以。
- 枚举类默认继承的是java.lang.Enum类，因此不能再继承其他的类型。
- JDK5.0 之后switch，提供支持枚举类型，case后面可以写枚举常量名，无需添加枚举类作为限定。

**例子**

```java
public enum Week {
    MONDAY,TUESDAY,WEDNESDAY,THURSDAY,FRIDAY,SATURDAY,SUNDAY;
}
```

```java
public enum SeasonEnum {
    SPRING("春天","春风又绿江南岸"),
    SUMMER("夏天","映日荷花别样红"),
    AUTUMN("秋天","秋水共长天一色"),
    WINTER("冬天","窗含西岭千秋雪");

    private final String seasonName;
    private final String seasonDesc;
    
    private SeasonEnum(String seasonName, String seasonDesc) {
        this.seasonName = seasonName;
        this.seasonDesc = seasonDesc;
    }
    public String getSeasonName() {
        return seasonName;
    }
    public String getSeasonDesc() {
        return seasonDesc;
    }
}
```

#### enum类中常用的方法

> * String toString(): 默认返回的是常量名（对象名），可以继续手动重写该方法！
>
> * static 枚举类型[] values():返回枚举类型的对象数组。该方法可以很方便地遍历所有的枚举值，是一个静态方法
>
> * static 枚举类型 valueOf(String name)：可以把一个字符串转为对应的枚举类对象。要求字符串必须是枚举类对象的“名字”。如不是，会有运行时异常：IllegalArgumentException。
>
> * String name():得到当前枚举常量的名称。建议优先使用toString()。
> * int ordinal():返回当前枚举常量的次序号，默认从0开始

#### 枚举类实现接口

- 和普通 Java 类一样，枚举类可以实现一个或多个接口
- 若每个枚举值在调用实现的接口方法呈现相同的行为方式，则只要统一实现该方法即可。
- 若需要每个枚举值在调用实现的接口方法呈现出不同的行为方式，则可以让每个枚举值分别来实现该方法

语法：

```java
//1、枚举类可以像普通的类一样，实现接口，并且可以多个，但要求必须实现里面所有的抽象方法！
enum A implements 接口1，接口2{
	//抽象方法的实现
}

//2、如果枚举类的常量可以继续重写抽象方法!
enum A implements 接口1，接口2{
    常量名1(参数){
        //抽象方法的实现或重写
    },
    常量名2(参数){
        //抽象方法的实现或重写
    },
    //...
}
```

### 注解（Annotation）

> 从jdk5.0开始引入
>
> * Annotation 可以像修饰符一样被使用，可用于修饰包、类、构造器、方法、成员变量、参数、局部变量的声明。还可以添加一些参数值，这些信息被保存在 Annotation 的 “name=value” 对中。
> * 注解可以在类编译、运行时进行加载，体现不同的功能。
>
> * `框架 = 注解 + 反射 + 设计模式`
>
> 注解的应用场景：
>
> * 生成文档相关的注解示例
> * 在编译时进行格式检查(JDK内置的三个基本注解)示例
> * 跟踪代码依赖性，实现替代配置文件功能

#### 常见的注解

##### 生成文档相关的注解

```java
@author 标明开发该类模块的作者，多个作者之间使用,分割
@version 标明该类模块的版本
@see 参考转向，也就是相关主题
@since 从哪个版本开始增加的
@param 对方法中某参数的说明，如果没有参数就不能写
@return 对方法返回值的说明，如果方法的返回值类型是void就不能写
@exception 对方法可能抛出的异常进行说明 ，如果方法没有用throws显式抛出的异常就不能写
```

##### 编译时进行格式的检查

###### `@Override`

* 限定重写父类方法，该注解只能用于方法

###### `@Deprecated`

* 用于表示所修饰的元素(类，方法等)已过时。通常是因为所修饰的结构危险或存在更好的选择
* 可以用于修饰 属性、方法、构造、类、包、局部变量、参数。

###### `@SuppressWarnings`

* idea中生成改注解![1689615367962](Java.assets/1689615367962.png)

* 抑制编译器警告，当我们不希望看到警告信息的时候，可以使用 SuppressWarnings 注解来抑制警告信息
* 可以指定的警告类型有
  - all，抑制所有警告
  - unchecked，抑制与未检查的作业相关的警告
  - unused，抑制与未用的程式码及停用的程式码相关的警告
  - deprecation，抑制与淘汰的相关警告
  - nls，抑制与非 nls 字串文字相关的警告
  - null，抑制与空值分析相关的警告
  - rawtypes，抑制与使用 raw 类型相关的警告
  - static-access，抑制与静态存取不正确相关的警告
  - static-method，抑制与可能宣告为 static 的方法相关的警告
  - super，抑制与置换方法相关但不含 super 呼叫的警告
  - ...

#### 元注解

（1）**@Target：**用于描述注解的使用范围

- 可以通过枚举类型ElementType的10个常量对象来指定
- TYPE，METHOD，CONSTRUCTOR，PACKAGE.....

（2）**@Retention：**用于描述注解的生命周期

- 可以通过枚举类型RetentionPolicy的3个常量对象来指定
- SOURCE（源代码）、CLASS（字节码）、RUNTIME（运行时）
- `唯有RUNTIME阶段才能被反射读取到`。

（3）**@Documented**：表明这个注解应该被 javadoc工具记录。

* ![1689615532262](Java.assets/1689615532262.png)

（4）**@Inherited：**允许子类继承父类中的注解

示例代码：

```java
package java.lang;

import java.lang.annotation.*;

@Target(ElementType.METHOD)
@Retention(RetentionPolicy.SOURCE)
public @interface Override {
}
```

```java
package java.lang;

import java.lang.annotation.*;
import static java.lang.annotation.ElementType.*;

@Target({TYPE, FIELD, METHOD, PARAMETER, CONSTRUCTOR, LOCAL_VARIABLE})
@Retention(RetentionPolicy.SOURCE)
public @interface SuppressWarnings {
    String[] value();
}
```

```java
package java.lang;

import java.lang.annotation.*;
import static java.lang.annotation.ElementType.*;

@Documented
@Retention(RetentionPolicy.RUNTIME)
@Target(value={CONSTRUCTOR, FIELD, LOCAL_VARIABLE, METHOD, PACKAGE, PARAMETER, TYPE})
public @interface Deprecated {
}
```

#### 自定义注解的使用

一个完整的注解应该包含三个部分：
（1）声明
（2）使用
（3）读取

##### 声明自定义注解

![1689615884462](Java.assets/1689615884462.png)

```java
【元注解】
【修饰符】 @interface 注解名{
    【成员列表】
}
```

- 自定义注解可以通过四个元注解@Retention,@Target，@Inherited,@Documented，分别说明它的声明周期，使用位置，是否被继承，是否被生成到API文档中。
- Annotation 的成员在 Annotation 定义中以无参数有返回值的抽象方法的形式来声明，我们又称为配置参数。返回值类型只能是八种基本数据类型、String类型、Class类型、enum类型、Annotation类型、以上所有类型的数组
- 可以使用 default 关键字为抽象方法指定默认返回值
- 如果定义的注解含有抽象方法，那么使用时必须指定返回值，除非它有默认值。格式是“方法名 = 返回值”，如果只有一个抽象方法需要赋值，且方法名为value，可以省略“value=”，所以如果注解只有一个抽象方法成员，建议使用方法名value。

```java
package com.atguigu.annotation;

import java.lang.annotation.*;

@Inherited
@Target(ElementType.TYPE)
@Retention(RetentionPolicy.RUNTIME)
public @interface Table {
    String value();
}
```

```java
package com.atguigu.annotation;

import java.lang.annotation.*;

@Inherited
@Target(ElementType.FIELD)
@Retention(RetentionPolicy.RUNTIME)
public @interface Column {
    String columnName();
    String columnType();
}
```

##### 使用自定义注解

```java
package com.atguigu.annotation;

@Table("t_stu")
public class Student {
    @Column(columnName = "sid",columnType = "int")
    private int id;
    @Column(columnName = "sname",columnType = "varchar(20)")
    private String name;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Student{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }
}

```

### 包装类

> 基本数据类型与引用数据类型。
>
> 需要包装类型的原因，有些情况下只面向对象的api，如泛型

![1689651915798](Java.assets/1689651915798.png)

封装以后的内存结构

![1689662006231](Java.assets/1689662006231.png)

#### 装箱与拆箱

> 需要转换的原因
>
> * 基本数据类型到包装类。
>   * 泛型等包装类API使用场景
> * 包装类到基本数据类型
>   * 需要加、减、乘、除等运算

##### 装箱

基本数据类型到包装类

* 使用包装类的构造器
* （建议）调用包装类的valueof(xxx xx)

```java
Integer obj1 = new Integer(4);//使用构造函数函数
Float f = new Float(“4.56”);
Long l = new Long(“asdf”);  //NumberFormatException

Integer obj2 = Integer.valueOf(4);//使用包装类中的valueOf方法
```

##### 拆箱

包装类到基本数据类型

* 调用包装类的xxxValue()

```java
Integer obj = new Integer(4);
int num1 = obj.intValue();
```

##### 自动装箱与拆箱

> 从JDK5.0开始

```java
Integer i = 4;//自动装箱。相当于Integer i = Integer.valueOf(4);
i = i + 5;//等号右边：将i对象转成基本数值(自动拆箱) i.intValue() + 5;
//加法运算完成后，再次装箱，把基本数值转成对象。
```

> 注意：只能与自己对应的类型之间才能实现自动装箱与拆箱。

```java
Integer i = 1;
Double d = 1;//错误的，1是int类型
```

#### String与基本数据类型、包装类之间的转换

**基本数据类型、包装类到String类**

* 调用String的重载的静态方法valueOf(xxx xx)

  ```java
  int a = 10;
  //String str = a;//错误的
  
  String str = String.valueOf(a);
  ```

* 基本数据类型的变量 + ""

  ```java
  int a = 10;
  
  String str = a + "";
  ```



**String类型到基本数据类型、包装类**

* String类到基本数据类型，调用包装类的静态方法：parseXxx()
  * 了Character类之外，其他所有包装类都具有parseXxx静态方法
  * `public static int parseInt(String s)`：将字符串参数转换为对应的int基本类型。
  * `public static long parseLong(String s)`：将字符串参数转换为对应的long基本类型。
  * `public static double parseDouble(String s)`：将字符串参数转换为对应的double基本类型。
* String类到包装类
  * ```public static Integer valueOf(String s)```：将字符串参数转换为对应的Integer包装类，然后可以自动拆箱为int基本类型
  * ```public static Long valueOf(String s)```：将字符串参数转换为对应的Long包装类，然后可以自动拆箱为long基本类型
  * ```public static Double valueOf(String s)```：将字符串参数转换为对应的Double包装类，然后可以自动拆箱为double基本类型

![1689662744133](Java.assets/1689662744133.png)

#### 包装类的其他API

##### 数据类型的最大值最小值

```java
Integer.MAX_VALUE和Integer.MIN_VALUE
    
Long.MAX_VALUE和Long.MIN_VALUE
    
Double.MAX_VALUE和Double.MIN_VALUE
```

##### 字符转大小写

```java
Character.toUpperCase('x');

Character.toLowerCase('X');
```

##### 整数转进制

```java
Integer.toBinaryString(int i) 
    
Integer.toHexString(int i)
    
Integer.toOctalString(int i)
```

##### 比较方法

```java
Double.compare(double d1, double d2)
    
Integer.compare(int x, int y) 
```

#### 包装类对象的特点

##### 包装类缓存对象

| 包装类    | 缓存对象    |
| --------- | ----------- |
| Byte      | -128~127    |
| Short     | -128~127    |
| Integer   | -128~127    |
| Long      | -128~127    |
| Float     | 没有        |
| Double    | 没有        |
| Character | 0~127       |
| Boolean   | true和false |

```java
Integer a = 1;
Integer b = 1;
System.out.println(a == b);//true

Integer i = 128;
Integer j = 128;
System.out.println(i == j);//false

Integer m = new Integer(1);//新new的在堆中
Integer n = 1;//这个用的是缓冲的常量对象，在方法区
System.out.println(m == n);//false

Integer x = new Integer(1);//新new的在堆中
Integer y = new Integer(1);//另一个新new的在堆中
System.out.println(x == y);//false
```

```java
Double d1 = 1.0;
Double d2 = 1.0;
System.out.println(d1==d2);//false 比较地址，没有缓存对象，每一个都是新new的
```

##### 类型转换问题

```java
Integer i = 1000;
double j = 1000;
System.out.println(i==j);//true  会先将i自动拆箱为int，然后根据基本数据类型“自动类型转换”规则，转为double比较
```

```java
Integer i = 1000;
int j = 1000;
System.out.println(i==j);//true 会自动拆箱，按照基本数据类型进行比较
```

```java
Integer i = 1;
Double d = 1.0
System.out.println(i==d);//编译报错
```

##### 包装类对象不可变

> 包装类对象要变返回的是新的对象

## 异常

> 异常：指的是程序在执行过程中，出现的非正常情况，如果不处理最终会导致JVM的非正常停止。

![1690300946454](Java.assets/1690300946454.png)

* **编译时期异常**（即checked异常、受检异常）：编译不通过。

* **运行时期异常**（即runtime异常、unchecked异常、非受检异常）：编译可以通过，只有运行时才会发现。

  ![1690301097812](Java.assets/1690301097812.png)

### 异常处理方式

> 异常的处理一般只针对编译时异常，因为对于运行时异常，处理与不处理结果都一样。

#### try-catch-finally

语法结构：

> 如果有多个catch分支
>
> * 可以是没有相互继承关系的异常
>
> * 多个异常类型有父子类关系，必须保证小的子异常类型在上，大的父异常类型在下。否则，报错。
>
> finally语句和catch语句是可选的，但finally不能单独使用。

```java
try{
	......	//可能产生异常的代码
    //若上面发生异常，try中后续的代码无法继续执行
    .....
}
catch( 异常类型1 e ){		
	......	//当产生异常类型1型异常时的处置措施
}
catch( 异常类型2 e ){
	...... 	//当产生异常类型2型异常时的处置措施
}  
finally{
	...... //无论是否发生异常，都无条件执行的语句
} 
```

**catch中常用异常处理的方式**

* `public String getMessage()`：获取异常的描述信息，返回字符串（打印构造器的参数）
* `public void printStackTrace()`：打印异常的跟踪栈信息并输出到控制台。包含了异常的类型、异常的原因、还包括异常出现的位置，在开发和调试阶段，都得使用printStackTrace()。

**finally的作用**

* 因为异常会引发程序跳转，从而会导致有些语句执行不到。

  例如，数据库连接、输入流输出流、Socket连接、Lock锁的关闭等，这样的代码通常就会放到finally块中。

  对于这些资源，GC会发现还有指向别的地方的指针，所以不会回收这些资源。

* 唯一的例外，使用 System.exit(0) 来终止当前正在运行的 Java 虚拟机。
* 不论在try代码块中是否发生了异常事件，catch语句是否执行，catch语句是否有异常，catch语句中是否有return，finally块中的语句都会被执行。

#### 声明抛出异常类型（throws + 异常类型）

![1690302911415](Java.assets/1690302911415.png)

##### throws基本格式

**声明异常格式：**

```
修饰符 返回值类型 方法名(参数) throws 异常类名1,异常类名2…{   }	
```

在throws后面可以写多个异常类型，用逗号隔开。

举例：

```java
public void readFile(String file)  throws FileNotFoundException,IOException {
	...
	// 读文件的操作可能产生FileNotFoundException或IOException类型的异常
	FileInputStream fis = new FileInputStream(file);
    //...
}

```

##### 方法重写中throws的要求

注：方法重写，对于“`throws 运行时异常类型`”没有要求。

> （1）方法名必须相同
> （2）形参列表必须相同
> （3）返回值类型
> 	基本数据类型和void：必须相同
> 	引用数据类型：<=
> （4）权限修饰符：>=，而且要求父类被重写方法在子类中是可见的
> （5）不能是static，final修饰的方法

```java

import java.io.IOException;

class Father{
    public void method()throws Exception{
        System.out.println("Father.method");
    }
}
class Son extends Father{
    @Override
    public void method() throws IOException,ClassCastException {
        System.out.println("Son.method");
    }
}
```

### 手动抛出异常对象：throw

#### 使用格式

```java
throw new 异常类名(参数);
```

throw语句抛出的异常对象，和JVM自动创建和抛出的异常对象一样。

- 如果是编译时异常类型的对象，同样需要使用throws或者try...catch处理，否则编译不通过。

- 如果是运行时异常类型的对象，编译器不提示。

- 可以抛出的异常必须是Throwable或其子类的实例。下面的语句在编译时将会产生语法错误：

  ```java
  throw new String("want to throw");
  ```

#### 要点和例子

* throw语句会导致程序执行流程被改变，throw语句是明确抛出一个异常对象，因此它`下面的代码将不会执行`。
* 如果当前方法没有try...catch处理这个异常对象，throw语句就会`代替return语句`提前终止当前方法的执行，并返回一个异常对象给调用者。

```java
public class TestThrow {
    public static void main(String[] args) {
        try {
            System.out.println(max(4,2,31,1));
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            System.out.println(max(4));
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            System.out.println(max());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static int max(int... nums){
        if(nums == null || nums.length==0){
            throw new IllegalArgumentException("没有传入任何整数，无法获取最大值");
        }
        int max = nums[0];
        for (int i = 1; i < nums.length; i++) {
            if(nums[i] > max){
                max = nums[i];
            }
        }
        return max;
    }
}
```

### 自定义异常

#### 自定义异常的步骤

（1）要继承一个异常类型

​			自定义一个编译时异常类型：自定义类继承`java.lang.Exception`。

​			自定义一个运行时异常类型：自定义类继承`java.lang.RuntimeException`。

（2）建议大家提供至少两个构造器，一个是无参构造，一个是(String message)构造器。

（3）自定义异常需要提供`serialVersionUID`

#### 要点

1. 自定义的异常只能通过throw抛出。
2. 自定义异常最重要的是异常类的名字和message属性。当异常出现时，可以根据名字判断异常类型。比如：`TeamException("成员已满，无法添加"); `、 `TeamException("该员工已是某团队成员");`
3. 自定义异常对象只能手动抛出。抛出后由try..catch处理，也可以甩锅throws给调用者处理。

#### 例子

```java
class MyException extends Exception {
    static final long serialVersionUID = 23423423435L;
    private int idnumber;

    public MyException(String message, int id) {
        super(message);
        this.idnumber = id;
    }

    public int getId() {
        return idnumber;
    }
}
```

```java
public class MyExpTest {
    public void regist(int num) throws MyException {
        if (num < 0)
            throw new MyException("人数为负值，不合理", 3);
        else
            System.out.println("登记人数" + num);
    }
    public void manager() {
        try {
            regist(100);
        } catch (MyException e) {
            System.out.print("登记失败，出错种类" + e.getId());
        }
        System.out.print("本次登记操作结束");
    }
    public static void main(String args[]) {
        MyExpTest t = new MyExpTest();
        t.manager();
    }
}
```

### jdk新特性空指针报错提醒

![1692181587994](Java.assets/1692181587994.png)

## 多线程

### 相关概念

#### 程序、进程、线程

* **程序（program）**：为完成特定任务，用某种语言编写的`一组指令的集合`。即指`一段静态的代码`，静态对象。

* **进程（process）**：程序的一次执行过程，或是正在内存中运行的应用程序。

  * 进程作为`操作系统调度和分配资源的最小单位`（亦是系统运行程序的基本单位），系统在运行时会为每个进程分配不同的内存区域。

* **线程（thread）**：线程是`CPU调度和执行的最小单位`。

  * 一个进程可以有多个线程，

    ![1690823905203](Java.assets/1690823905203.png)

  * 一个进程中的多个线程共享相同的内存单元，它们从同一个堆中分配对象，可以访问相同的变量和对象。

    具体资源共享见下图

    > 注意：
    >
    > 不同的进程之间是不共享内存的。
    >
    > 进程之间的数据交换和通信的成本很高。

    ![1690824089722](Java.assets/1690824089722.png)

#### 并行与并发

* **并行（parallel）**：指两个或多个事件在`同一时刻`发生（同时发生）。指在同一时刻，有`多条指令`在`多个CPU`上`同时`执行。比如：多个人同时做不同的事。

  ![1691053771377](Java.assets/1691053771377.png)

* **并发（concurrency）**：指两个或多个事件在`同一个时间段内`发生。即在一段时间内，有`多条指令`在`单个CPU`上`快速轮换、交替`执行，使得在宏观上具有多个进程同时执行的效果。

  ![1691053789542](Java.assets/1691053789542.png)

### 创建和启动线程

- Java语言的JVM允许程序运行多个线程，使用`java.lang.Thread`类代表**线程**，所有的线程对象都必须是Thread类或其子类的实例。
- Thread类的特性
  - 每个线程都是通过某个特定Thread对象的run()方法来完成操作的，因此把run()方法体称为`线程执行体`。
  - 通过该Thread对象的start()方法来启动这个线程，而非直接调用run()
  - 要想实现多线程，必须在主线程中创建新的线程对象。

#### 方式一：继承Thread类

Java通过继承Thread类来**创建**并**启动多线程**的步骤如下：

1. 定义Thread类的子类，并重写该类的run()方法，该run()方法的方法体就代表了线程需要完成的任务
2. 创建Thread子类的实例，即创建了线程对象
3. 调用线程对象的start()方法来启动该线程

代码如下：

```java
//自定义线程类
public class MyThread extends Thread {
    //定义指定线程名称的构造方法
    public MyThread(String name) {
        //调用父类的String参数的构造方法，指定线程的名称
        super(name);
    }
    /**
     * 重写run方法，完成该线程执行的逻辑
     */
    @Override
    public void run() {
        for (int i = 0; i < 10; i++) {
            System.out.println(getName()+"：正在执行！"+i);
        }
    }
}
```

测试类：

```java
public class TestMyThread {
    public static void main(String[] args) {
        //创建自定义线程对象1
        MyThread mt1 = new MyThread("子线程1");
        //开启子线程1
        mt1.start();
        
        //创建自定义线程对象2
        MyThread mt2 = new MyThread("子线程2");
        //开启子线程2
        mt2.start();
        
        //在主方法中执行for循环
        for (int i = 0; i < 10; i++) {
            System.out.println("main线程！"+i);
        }
    }
}
```

![1691065153795](Java.assets/1691065153795.png)

> 注意：
>
> 1. 如果自己手动调用run()方法，那么就只是普通方法，没有启动多线程模式。
> 2. run()方法由JVM调用，什么时候调用，执行的过程控制都有操作系统的CPU调度决定。
> 3. 想要启动多线程，必须调用start方法。
> 4. 一个线程对象只能调用一次start()方法启动，如果重复调用了，则将抛出以上的异常“`IllegalThreadStateException`”。

#### 方式二：实现Runnable接口

在核心类库中提供了Runnable接口，我们可以实现Runnable接口，重写run()方法，然后再通过Thread类的对象代理启动和执行我们的线程体run()方法步骤如下：

1. 定义Runnable接口的实现类，并重写该接口的run()方法，该run()方法的方法体同样是该线程的线程执行体。
2. 创建Runnable实现类的实例，并以此实例作为Thread的target参数来创建Thread对象，该Thread对象才是真正的线程对象。
3. 调用线程对象的start()方法，启动线程。调用Runnable接口实现类的run方法。

代码如下：

```java

public class MyRunnable implements Runnable {
    @Override
    public void run() {
        for (int i = 0; i < 20; i++) {
            System.out.println(Thread.currentThread().getName() + " " + i);
        }
    }
}
```

测试类：

```java

public class TestMyRunnable {
    public static void main(String[] args) {
        //创建自定义类对象  线程任务对象
        MyRunnable mr = new MyRunnable();
        //创建线程对象
        Thread t = new Thread(mr, "长江");
        t.start();
        for (int i = 0; i < 20; i++) {
            System.out.println("黄河 " + i);
        }
    }
}
```

 在启动的多线程的时候，需要先通过Thread类的构造方法Thread(Runnable target) 构造出对象，然后调用Thread对象的start()方法来运行多线程代码。

实际上，所有的多线程代码都是通过运行Thread的start()方法来运行的。因此，不管是继承Thread类还是实现
Runnable接口来实现多线程，**最终还是通过Thread的对象的API来控制线程的**。

说明：Runnable对象仅仅作为Thread对象的target，Runnable实现类里包含的run()方法仅作为线程执行体。
而实际的线程对象依然是Thread实例，只是该Thread线程负责执行其target的run()方法。

![1691137595607](Java.assets/1691137595607.png)

#### 方式三：实现Callable接口

Future接口

* 可以对具体Runnable、Callable任务的执行结果进行取消、查询是否完成、获取结果等。
* FutureTask是Futrue接口的唯一的实现类
* FutureTask 同时实现了Runnable, Future接口。它既可以作为Runnable被线程执行，又可以作为Future得到Callable的返回值

```java
class NumThread implements Callable{
    //2.实现call方法，将此线程需要执行的操作声明在call()中
    @Override
    public Object call() throws Exception {
        int sum = 0;
        for (int i = 0; i < 100; i++) {
            if (i % 2 == 0){
                System.out.println(i);
                sum += i;
            }
            Thread.sleep(100);
        }
        return sum;
    }
}

public class CallableTest {
    public static void main(String[] args) {
        //3.创建Callable接口实现类的对象
        NumThread numThread = new NumThread();

        //4.将此Callable接口实现类的对象作为传递到FutureTask构造器中，创建FutureTask的对象
        FutureTask futureTask = new FutureTask<>(numThread);

        //5.将FutureTask的对象作为参数传递到Thread类的构造器中，创建Thread对象，并调用start()
        Thread thread = new Thread(futureTask);
        thread.start();

        System.out.println(Thread.currentThread().getName());
        try {
            //6.获取Callable中call方法的返回值
            //get()返回值即为FutureTask构造器参数Callable实现类重写的call()的返回值。
            Object sum = futureTask.get();
            System.out.println("总和为：" + sum);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

```

#### 方式四：使用线程池

> **思路：**提前创建好多个线程，放入线程池中，使用时直接获取，使用完放回池中。==可以避免频繁创建销毁、实现重复利用==。

![1691343618368](Java.assets/1691343618368.png)

```java
class NumThread implements Runnable{
    @Override
    public void run() {
        for (int i = 0; i < 100; i++) {
            if (i % 2 == 0)
                System.out.println(Thread.currentThread().getName() + ": " + i);
        }
    }
}

class NumThread1 implements Runnable{
    @Override
    public void run() {
        for (int i = 0; i < 100; i++) {
            if (i % 2 != 0)
                System.out.println(Thread.currentThread().getName() + ": " + i);
        }
    }
}

public class ThreadPool {
    public static void main(String[] args) {
        //1. 提供指定线程数量的线程池
        ExecutorService service = Executors.newFixedThreadPool(10);
        ThreadPoolExecutor service1 = (ThreadPoolExecutor) service;

        //设置线程池的属性
        System.out.println(service.getClass());
        service1.setMaximumPoolSize(50);  //设置线程池中线程数的上限

        //2.执行指定的线程的操作。需要提供实现Runnable接口或Callable接口实现类的对象
        service.execute(new NumThread());
        service.execute(new NumThread1());
        //        service.submit(Callable callable);//适合使用于Callable
        //3.关闭连接池
        service.shutdown();

    }
}

```

**线程池相关API**

- JDK5.0之前，我们必须手动自定义线程池。从JDK5.0开始，Java内置线程池相关的API。在java.util.concurrent包下提供了线程池相关API：`ExecutorService` 和 `Executors`。
- `ExecutorService`：真正的线程池接口。常见子类ThreadPoolExecutor
  - `void execute(Runnable command)` ：执行任务/命令，没有返回值，一般用来执行Runnable
  - `<T> Future<T> submit(Callable<T> task)`：执行任务，有返回值，一般又来执行Callable
  - `void shutdown()` ：关闭连接池
- `Executors`：一个线程池的工厂类，通过此类的静态工厂方法可以创建多种类型的线程池对象。
  - `Executors.newCachedThreadPool()`：创建一个可根据需要创建新线程的线程池
  - `Executors.newFixedThreadPool(int nThreads)`; 创建一个可重用固定线程数的线程池
  - `Executors.newSingleThreadExecutor()` ：创建一个只有一个线程的线程池
  - `Executors.newScheduledThreadPool(int corePoolSize)`：创建一个线程池，它可安排在给定延迟后运行命令或者定期地执行。



#### 匿名写法

**使用匿名内部类对象来实现线程的创建和启动**

```java
new Thread("新的线程！"){
	@Override
	public void run() {
		for (int i = 0; i < 10; i++) {
			System.out.println(getName()+"：正在执行！"+i);
		}
	}
}.start();
```

```java
new Thread(new Runnable(){
	@Override
	public void run() {
		for (int i = 0; i < 10; i++) {
			System.out.println(Thread.currentThread().getName()+"：" + i);
		}
	}
}).start();
```

#### 几种方式的对比

##### 继承Thread类与实现Runnable接口

**联系**

Thread类实际上也是实现了Runnable接口的类。即：

```java
public class Thread extends Object implements Runnable		//代理模式
```

① 启动线程，使用的都是Thread类中定义的start()

② 创建的线程对象，都是Thread类或其子类的实例。

**区别**

- 继承Thread：线程代码存放Thread子类run方法中。
- 实现Runnable：线程代码存在接口的子类的run方法。

**实现Runnable接口比继承Thread类所具有的优势**

- 避免了单继承的局限性
- 多个线程可以共享同一个接口实现类的对象，更适合处理有共享数据的问题。
- 增加程序的健壮性，实现解耦操作，代码可以被多个线程共享，代码和线程独立。

##### Runnable接口与Callable接口对比

与使用Runnable相比， Callable功能更强大些

- 相比run()方法，可以有返回值
- 方法可以抛出异常
- 支持泛型的返回值（需要借助FutureTask类，获取返回结果）

缺点：在获取分线程执行结果的时候，当前线程（或是主线程）受阻塞，效率较低。

##### 使用线程池的好处

- 提高响应速度（减少了创建新线程的时间）
- 降低资源消耗（重复利用线程池中线程，不需要每次都创建）
- 便于线程管理
  - corePoolSize：核心池的大小
  - maximumPoolSize：最大线程数
  - keepAliveTime：线程没有任务时最多保持多长时间后会终止
  - …

### Thread常用API

#### 构造器

- `public Thread()` :分配一个新的线程对象。
- `public Thread(String name)` :分配一个指定名字的新的线程对象。
- `public Thread(Runnable target)` :指定创建线程的目标对象，它实现了Runnable接口中的run方法
- `public Thread(Runnable target,String name)`:分配一个带有指定目标新的线程对象并指定名字。

#### 常用方法

- `public void run()` :此线程要执行的任务在此处定义代码。

- `public void start()` :该线程线程开始执行; Java虚拟机调用此线程的run方法。

- `public String getName()` :获取当前线程名称。

- `public void setName(String name)`：设置该线程名称。

- `public static Thread currentThread()` :返回对当前正在执行的线程对象的引用。在Thread子类中就是this，通常用于主线程和Runnable实现类

- `public static void sleep(long millis)` :使当前正在执行的线程以指定的毫秒数暂停（暂时停止执行）。

- `public static void yield()`：静态方法，一旦此方法执行，就释放CPU的执行权

- `public final boolean isAlive()`：判断线程是否处于活动状态。如果线程已经启动且尚未终止，则为活动状态。 

- `void join()` ：在线程a中通过线程b调用join()，意味着线程a进入阻塞状态，直到线程b执行结束，线程a才结束阻塞状态，继续执行。 

  `void join(long millis)` ：等待该线程终止的时间最长为 millis 毫秒。如果millis时间到，将不再等待。 

  `void join(long millis, int nanos)` ：等待该线程终止的时间最长为 millis 毫秒 + nanos 纳秒。 

- `public final void stop()`：==已过时，不建议使用==。强行结束一个线程的执行，直接进入死亡状态。run()即刻停止，可能会导致一些清理性的工作得不到完成，如文件，数据库等的关闭。同时，会立即释放该线程所持有的所有的锁，导致数据得不到同步的处理，出现数据不一致的问题。

- `void suspend() / void resume()` : 这两个操作就好比播放器的暂停和恢复。二者必须成对出现，否则非常容易发生死锁。suspend()调用会导致线程暂停，但不会释放任何锁资源，导致其它线程都无法访问被它占用的锁，直到调用resume()。==已过时，不建议使用==。

- 优先级系列方法

  - `public final int getPriority()` ：返回线程优先级 
  - `public final void setPriority(int newPriority)`：改变线程的优先级，范围在[1,10]之间。

#### 附录（优先级）

每个线程都有一定的优先级，同优先级线程组成先进先出队列（先到先服务），使用分时调度策略。优先级高的线程采用抢占式策略，获得较多的执行机会。每个线程默认的优先级都与创建它的父线程具有相同的优先级。

- Thread类的三个优先级常量：
  - MAX_PRIORITY（10）：最高优先级 
  - MIN _PRIORITY （1）：最低优先级
  - NORM_PRIORITY （5）：普通优先级，默认情况下main线程具有普通优先级。

### 多线程的生命周期

JDK1.5之前

![1691289287247](Java.assets/1691289287247.png)

JDK1.5之后

![1691289397179](Java.assets/1691289397179.png)

### 线程安全问题的解决（同步）

同步：一气呵成，不能被其他竞争关系的线程打断

#### sychronized

##### 同步代码块

```java
synchronized(同步监视器){
    //需要被同步的代码
}
```

* 同步监视器,俗称锁。哪个线程获取了锁，哪个线程就能执行需要被同步的代码。

* 同步监视器，可以使用任何一个类的对象充当。但是，==多个线程必须共用同一个同步监视器==。

  * 在实现==Runnable接口==的方式中，同步监视器可以考虑使用：==this==

    ```java
    synchronized(this){
        //需要被同步的代码
    }
    ```

  * 在继承==Thread类==的方式中，同步监视器要慎用this，可以考虑使用：==当前类.class==

    ```java
    synchronized(类名.class){
        //需要被同步的代码
    }
    ```

##### 同步方法

```java
public synchronized void method(){	//默认同步监视器this
    可能会产生线程安全问题的代码
}
public static synchronized void method(){	//默认同步监视器类本身
    可能会产生线程安全问题的代码
}
```

* 非静态的同步方法，默认同步监视器是this
* 静态的同步方法，默认同步监视器是当前类本身。

#### JDK5.0新特性：Lock

**java.util.concurrent.locks.Lock**

此处以`ReentrantLock`为主

Lock锁也称同步锁，加锁与释放锁方法，如下：

- public void lock() :加同步锁。
- public void unlock() :释放同步锁。

> 注意：如果同步代码有异常，要将unlock()写入finally语句块。

```java
class A{
    //1. 创建Lock的实例，必须确保多个线程共享同一个Lock实例
	private final ReentrantLock lock = new ReenTrantLock();
	public void m(){
        //2. 调动lock()，实现需共享的代码的锁定
		lock.lock();
		try{
			//保证线程安全的代码;
		}
		finally{
            //3. 调用unlock()，释放共享代码的锁定
			lock.unlock();  
		}
	}
}

```

#### sychronized与Lock的对比

1. Lock是显式锁（手动开启和关闭锁，别忘记关闭锁），synchronized是隐式锁，出了作用域、遇到异常等自动解锁
2. Lock只有代码块锁，synchronized有代码块锁和方法锁
3. 使用Lock锁，JVM将花费较少的时间来调度线程，性能更好。并且具有更好的扩展性（提供更多的子类），更体现面向对象。
4. Lock锁可以对读不加锁，对写加锁，synchronized不可以
5. Lock锁可以有多种获取锁的方式，可以从sleep的线程中抢到锁，synchronized不可以

#### 附录

volatile的作用：从JDK2开始，分配空间、初始化、调用构造器会在线程的工作存储区一次性完成，然后复制到主存储区。但是需要volatile关键字，避免指令重排。

懒汉单例

```java
class Bank{

//    private static Bank instance = null;
    //加volatile是为了避免指令重排
    private static volatile Bank instance = null;
    public Bank() {}
    
    public static Bank getInstance(){
        if (instance != null) { //多加一层为了效率
            synchronized (Bank.class) {
                if (instance != null){
                    //如果instance变量没有加volatile修饰，则可能出现instance得到地址，但对象可能还未初始化完成。
                    instance = new Bank();
                }

            }
        }
        return instance;
    }

}
```



### 死锁

> 一旦出现死锁，整个程序既不会发生异常，也不会给出任何提示，只是所有线程处于阻塞状态，无法继续。

![1691292664566](Java.assets/1691292664566.png)

#### 诱发死锁的原因：

- 互斥条件
- 占用且等待
- 不可抢夺（或不可抢占）
- 循环等待

#### 解决死锁：

针对条件1：互斥条件基本上无法被破坏。因为线程需要通过互斥解决安全问题。

针对条件2：可以考虑一次性申请所有所需的资源，这样就不存在等待的问题。

针对条件3：占用部分资源的线程在进一步申请其他资源时，如果申请不到，就主动释放掉已经占用的资源。

针对条件4：可以将资源改为线性顺序。申请资源时，先申请序号较小的，这样避免循环等待问题。

#### 是否释放锁的操作

| 是否释放锁 | 操作                                                         |
| ---------- | ------------------------------------------------------------ |
| 释放       | 1、当前线程的同步方法、同步代码==块执行结束==。<br />2、当前线程在同步代码块、同步方法中遇到==break、return==终止了该代码块、该方法的继续执行。<br />3、当前线程在同步代码块、同步方法中出现了未处理的==Error或Exception==，导致当前线程异常结束。<br />4、当前线程在同步代码块、同步方法中执行了锁对象的==wait()==方法，当前线程被挂起，并释放锁。 |
| 不释放     | 1、线程执行同步代码块或同步方法时，程序调用==Thread.sleep()、Thread.yield()==方法暂停当前线程的执行。<br />2、线程执行同步代码块时，其他线程调用了该线程的==suspend()==方法将该该线程挂起，该线程不会释放锁（同步监视器）。<br />注：应尽量避免使用suspend()和resume()这样的过时来控制线程。 |



### 线程间通信

#### 概述

​		当我们==需要多个线程==来共同完成一件任务，并且我们希望他们==有规律的执行==，那么多线程之间需要一些通信机制，可以协调它们的工作，以此实现多线程共同操作一份数据。

#### 用到的三个方法

> * 此三个方法的使用，必须是在同步代码块或同步方法中。  (超纲：Lock需要配合Condition实现线程间的通信)
> * 此三个方法的调用者，必须是同步监视器。否则，会报IllegalMonitorStateException异常
> * 此三个方法声明==在Object类中==。

* wait():线程一旦执行此方法，就进入等待状态。同时，==会释放对同步监视器的调用==
* notify():一旦执行此方法，就会唤醒被wait()的线程中优先级最高的那一个线程。（如果被wait()的多个线程的优先级相同，则         随机唤醒一个）。被唤醒的线程从当初被wait的位置继续执行。
* notifyAll():一旦执行此方法，就会唤醒所有被wait的线程。

#### wait()与sleep的区别

相同点：一旦执行，当前线程都会进入阻塞状态

不同点：

* 声明的位置：
  * wait():声明在Object类中
  * sleep():声明在Thread类中，静态的
* 使用的场景不同：
  * wait():只能使用在同步代码块或同步方法中
  * sleep():可以在任何需要使用的场景
* 使用在同步代码块或同步方法中：
  * wait():一旦执行，==会释放同步监视器==
  * sleep():一旦执行，==不会释放同步监视器==
* 结束阻塞的方式：
  * wait(): 到达指定时间自动结束阻塞 或 通过被notify唤醒，结束阻塞
  * sleep(): 到达指定时间自动结束阻塞

#### 案例：生产者与消费者

```java
class Clerk{    //店员
    private int productNum = 0; //产品数量

    //添加产品数量的方法
    public synchronized void addProduct(){
        if (productNum >= 20){
            //等待
            try {
                wait();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }else {
            productNum++;
            System.out.println(Thread.currentThread().getName() + "生产了第" + productNum + "个产品");
            //唤醒
            notifyAll();
        }
    }

    //减少产品数量的方法
    public synchronized void minusProduct(){
        if (productNum <= 0){
            //等待
            try {
                wait();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }else {
            System.out.println(Thread.currentThread().getName() + "消费了第" + productNum + "个产品");
            productNum--;
            //唤醒
            notifyAll();
        }
    }
}

class Producer extends Thread{  //生产者
    private Clerk clerk;

    public Producer(Clerk clerk) {
        this.clerk = clerk;
    }

    @Override
    public void run() {
        while (true){
            System.out.println("生产者开始生产产品....");
            try {
                sleep(10);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            clerk.addProduct();
        }
    }
}

class Consumer extends Thread{  //消费者
    private Clerk clerk;

    public Consumer(Clerk clerk) {
        this.clerk = clerk;
    }

    @Override
    public void run() {
        while (true){
            System.out.println("消费者开始消费产品....");

            try {
                Thread.sleep(100);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            clerk.minusProduct();
        }
    }
}

public class ProducerConsumerTest {
    public static void main(String[] args) {
        Clerk clerk = new Clerk();

        Producer producer1 = new Producer(clerk);
        Consumer consumer1 = new Consumer(clerk);
        Consumer consumer2 = new Consumer(clerk);

        producer1.setName("生产者1");
        consumer1.setName("消费者1");
        consumer2.setName("消费者2");

        producer1.start();
        consumer1.start();
        consumer2.start();
    }
}

```

### 常见面试题

#### stop()和suspend()方法为什么不推荐使用？

stop()：一旦执行，线程就结束了，导致run()有未执行结束的代码。stop()会导致释放同步监视器，导致线程安全问题。

suspend()：与resume()搭配使用，导致死锁。

#### 为什么wait()和notify()方法要在同步块中调用

因为调用者必须是同步监视器。

## 常用类和基础API

### 不可变字符序列：String

> 字符串的不可变性体现在
>
> ① 当对字符串变量重新赋值时，需要重新指定一个字符串常量的位置进行赋值，不能在原有的位置修改
> ② 当对现有的字符串进行拼接操作时，需要重新开辟空间保存拼接以后的字符串，不能在原有的位置修改
> ③ 当调用字符串的replace()替换现有的某个字符时，需要重新开在堆中开辟空间保存修改以后的字符串，不能在原有的位置修改
>
> 从jdk7开始，String可以在switch中使用
>
> String是线程不安全的

- 字符串是常量，用双引号引起来表示。它们的值在创建之后不能更改。
- 字符串String类型本身是final声明的，意味着我们不能继承String。
- String对象的字符内容是存储在一个字符数组value[]中的。`"hello"` 等效于 `char[] data={'h','e','l','l','o'}`。

![1691546850933](Java.assets/1691546850933.png)

```java
//jdk8中的String源码：
/*
> final:String是不可被继承的
> Serializable:可序列化的接口。凡是实现此接口的类的对象就可以通过网络或本地流进行数据的传输。
> Comparable:凡是实现此接口的类，其对象都可以比较大小。
*/
public final class String
    implements java.io.Serializable, Comparable<String>, CharSequence {
    /** The value is used for character storage. */
    private final char value[]; //String对象的字符内容是存储在此数组中，
 	//jdk9中替换为了byte类型数组
 	//private final byte[] value;		//为了节省内存空间
 	
    /** Cache the hash code for the string */
    private int hash; // Default to 0
}
```

#### 字符串常量的存储位置

> - 字符串常量存储在字符串常量池，目的是共享。
> - 字符串非常量对象存储在堆中。

* 字符串常量都存储在字符串常量池(StringTable)中
* 字符串常量池不允许存放两个相同的字符串常量。
* 字符串常量池，在不同的jdk版本中，存放位置不同。  
  * jdk7之前：字符串常量池存放在方法区  
  * jdk7及之后：字符串常量池存放在堆空间。

##### jdk各版本常量池位置的变化

![1691637300358](Java.assets/1691637300358.png)

##### 常见的内存结构分配案例

> - 字符串常量存储在字符串常量池，目的是共享。
> - 字符串非常量对象存储在堆中。

![1691638376226](Java.assets/1691638376226.png)

##### 常见情形

> **结论：**
>
> （1）常量+常量：结果是常量池。且常量池中不会存在相同内容的常量。
>
> （2）常量与变量 或 变量与变量：结果在堆中
>
> （3）拼接后调用intern()方法：返回的是字符串常量池中字面量的地址
>
> （4）concat方法拼接，哪怕是两个常量对象拼接，结果也是在堆内。

- **String s1 = "a";** 

说明：在字符串常量池中创建了一个字面量为"a"的字符串。

![1691649318356](Java.assets/1691649318356.png)

- **s1 = s1 + "b";** 

说明：实际上原来的“a”字符串对象已经丢弃了，现在在堆空间中产生了一个字符串s1+"b"（也就是"ab")。如果多次执行这些改变串内容的操作，会导致大量副本字符串对象存留在内存中，降低效率。如果这样的操作放到循环中，会极大影响程序的性能。

![1691649380989](Java.assets/1691649380989.png)

- **String s2 = "a" + "b";**

说明：s3指向字符串常量池中已经创建的"ab"的字符串。

- **String s3 = s1.intern();**

说明：堆空间的s1对象在调用intern()之后，会将常量池中已经存在的"ab"字符串赋值给s4。

* **replace()方法**

![1691649568248](Java.assets/1691649568248.png)

* **new的方式创建String**

![1691649662584](Java.assets/1691649662584.png)

* 对象内的String属性

![1691649740749](Java.assets/1691649740749.png)

#### String实例化的两种方式

```
第1种方式：String s1 = "hello";
第2种方式：String s2 = new String("hello");
```

#### String的常用API

##### 构造器

- `public String() ` ：初始化新创建的 String对象，以使其表示空字符序列。
- ` String(String original)`： 初始化一个新创建的 `String` 对象，使其表示一个与参数相同的字符序列；换句话说，新创建的字符串是该参数字符串的副本。
- `public String(char[] value) ` ：通过当前参数中的字符数组来构造新的String。
- `public String(char[] value,int offset, int count) ` ：通过字符数组的一部分来构造新的String。
- `public String(byte[] bytes) ` ：通过使用平台的**默认字符集**解码当前参数中的字节数组来构造新的String。
- `public String(byte[] bytes,String charsetName) ` ：通过使用指定的字符集解码当前参数中的字节数组来构造新的String。

```java
//字面量定义方式：字符串常量对象
String str = "hello";

//构造器定义方式：无参构造
String str1 = new String();

//构造器定义方式：创建"hello"字符串常量的副本
String str2 = new String("hello");

//构造器定义方式：通过字符数组构造
char chars[] = {'a', 'b', 'c','d','e'};     
String str3 = new String(chars);
String str4 = new String(chars,0,3);

//构造器定义方式：通过字节数组构造
byte bytes[] = {97, 98, 99 };     
String str5 = new String(bytes);
String str6 = new String(bytes,"GBK");
```

##### String与其他结构间的转换

**字符串 --> 基本数据类型：**

包装类的静态方法`parseXxx(.......)`

```java
String s3 = "123";
Integer i1 = Integer.parseInt(s3);
```

**基本数据类型、包装类 --> 字符串：**

* 方式一：`变量+""`
* 方式二：包装类的静态方法`valueOf(.......)`

```java
//方式一：
String s1 = num + "";
//方式二“
String s2 = String.valueOf(num);
```

 **字符数组 -->  字符串：**

调用String的构造器

* `String(char[])`
* `String(char[]，int offset，int length)`

```java
 String str = "hello";
 //char -----> String调用String的构造器
 String str1 = new String(str);
 System.out.println(str1);
```

 **字符串 -->  字符数组：**

`public char[] toCharArray()`

`public void getChars(int srcBegin, int srcEnd, char[] dst, int dstBegin)`：提供了将指定索引范围内的字符串存放到数组中的方法。

```java
String str = "hello";
 //String ---> char[] 调用String的toCharArray
char[] arr = str.toCharArray();
for (char c : arr) {
    System.out.println(c);
}
```

**字符串 --> 字节数组：（编码）**

* `public byte[] getBytes()`
* `public byte[] getBytes(String charsetName)`

```java
String str = new String("abc中国");
//String ----> byte[] 调用String的getBytes()
byte[] bytes = str.getBytes();  //默认使用字符集utf-8
for (byte aByte : bytes) {
    System.out.println(aByte);
}
System.out.println();
byte[] bytes1 = str.getBytes("gbk");    //getBytes(String charsetName):使用指定的字符集
for (byte b : bytes1) {
    System.out.println(b);
}
```

 **字节数组 --> 字符串：（解码）**

* `String(byte[])`
* `String(byte[]，int offset，int length)`
* `String(byte[], String charsetName )`或`String(byte[], int, int,String charsetName )`

```java
//byte[] ------> String
String str1 = new String(bytes);    //默认使用字符集utf-8
System.out.println(str1);
String str2 = new String(bytes, "utf-8");   //显式地指明解码的字符集
System.out.println(str2);
//乱码
//String str3 = new String(bytes, "gbk");
//System.out.println(str3);
String str4 = new String(bytes1, "gbk");
System.out.println(str4);
```

##### 其它常用方法

###### **常用API**

（1）`boolean isEmpty()`：字符串是否为空
（2）`int length()`：返回字符串的长度
（3）`String concat(xx)`：拼接
（4）`boolean equals(Object obj)`：比较字符串是否相等，区分大小写
（5）`boolean equalsIgnoreCase(Object obj)`：比较字符串是否相等，不区分大小写
（6）`int compareTo(String other)`：比较字符串大小，区分大小写，按照Unicode编码值比较大小
（7）`int compareToIgnoreCase(String other)`：比较字符串大小，不区分大小写
（8）`String toLowerCase()`：将字符串中大写字母转为小写
（9）`String toUpperCase()`：将字符串中小写字母转为大写
（10）`String trim()`：去掉字符串前后空白符
（11）`public String intern()`：结果在常量池中共享

###### **查找**

（11）`boolean contains(xx)`：是否包含xx
（12）`int indexOf(xx)`：从前往后找当前字符串中xx，即如果有返回第一次出现的下标，要是没有返回-1
（13）`int indexOf(String str, int fromIndex)`：返回指定子字符串在此字符串中第一次出现处的索引，从指定的索引开始
（14）`int lastIndexOf(xx)`：从后往前找当前字符串中xx，即如果有返回最后一次出现的下标，要是没有返回-1
（15）`int lastIndexOf(String str, int fromIndex)`：返回指定子字符串在此字符串中最后一次出现处的索引，从指定的索引开始反向搜索。

###### **字符串截取**

（16）`String substring(int beginIndex) `：返回一个新的字符串，它是此字符串的从beginIndex开始截取到最后的一个子字符串。 
（17）`String substring(int beginIndex, int endIndex)` ：返回一个新字符串，它是此字符串从beginIndex开始截取到endIndex(不包含)的一个子字符串。 **左闭右开**

###### **与字符或字符数组相关的方法**

（18）`char charAt(index)`：返回[index]位置的字符
（19）`char[] toCharArray()`： 将此字符串转换为一个新的字符数组返回
（20）`static String valueOf(char[] data)`：返回指定数组中表示该字符序列的 String
（21）`static String valueOf(char[] data, int offset, int count)` ： 返回指定数组中表示该字符序列的 String
（22）`static String copyValueOf(char[] data)`： 返回指定数组中表示该字符序列的 String
（23）`static String copyValueOf(char[] data, int offset, int count)`：返回指定数组中表示该字符序列的 String

###### **开头与结尾**

（24）`boolean startsWith(xx)`：测试此字符串是否以指定的前缀开始 
（25）`boolean startsWith(String prefix, int toffset)`：测试此字符串从指定索引开始的子字符串是否以指定前缀开始
（26）`boolean endsWith(xx)`：测试此字符串是否以指定的后缀结束

###### **替换**

（27）`String replace(char oldChar, char newChar)`：返回一个新的字符串，它是通过用 newChar 替换此字符串中出现的所有 oldChar 得到的。 不支持正则。
（28）`String replace(CharSequence target, CharSequence replacement)`：使用指定的字面值替换序列替换此字符串所有匹配字面值目标序列的子字符串。 
（29）`String replaceAll(String regex, String replacement)`：使用给定的 replacement 替换此字符串所有匹配给定的正则表达式的子字符串。 
（30）`String replaceFirst(String regex, String replacement)`：使用给定的 replacement 替换此字符串匹配给定的正则表达式的第一个子字符串。 

### 可变字符序列：StringBuffer、StringBuilder

#### 区别

> 执行效率：StringBuilder > StringBuffer > String

- String:不可变的字符序列； 底层使用char[]数组存储(JDK8.0中)
- StringBuffer:可变的字符序列；线程安全（方法有synchronized修饰），效率低；底层使用char[]数组存储 (JDK8.0后变为byte[])
- StringBuilder:可变的字符序列； jdk1.5引入，线程不安全的，效率高；底层使用char[]数组存储(JDK8.0后变为byte[])

**对于StringBuffer和StringBuilder来讲**

内部有属性：

```java
char[] value;  //存储字符序列， jdk8之后为byte[]
int count;	//实际存储的字符个数
```

> value容量扩容规则：
>
> ​	...不断的添加，一旦count要超过value.length时，就需要扩容：默认扩容为==原有容量的2倍+2==。并将原有value数组中的元素复制到新的数组中。

![1691667394695](Java.assets/1691667394695.png)

#### 选用

* 如果开发中需要频繁的针对于字符串进行增、删、改等操作，使用StringBuffer或StringBuilder。
* 如果开发中，不涉及到线程安全问题，使用StringBuilder替换StringBuffer。
* 如果开发中大体确定要操作的字符的个数，建议使用带int capacity参数的构造器。因为可以避免底层多次扩容操作，性能更高。

#### 常用API

> 注：offset从0开始

**增**

* `StringBuffer append(xx)`

**删**

* `StringBuffer delete(int start, int end)`
* `StringBuffer deleteCharAt(int index)`

**改**

* `StringBuffer replace(int start, int end, String str)`
* `void setCharAt(int index, char c)`

**查**

* `char charAt(int index)`

**插**

* `StringBuffer insert(int index, xx)`

**长度**

* `int length()`

**反转**

* `StringBuffer reverse()`

**其它API**

（1）`int indexOf(String str)`：在当前字符序列中查询str的第一次出现下标
（2）`int indexOf(String str, int fromIndex)`：在当前字符序列[fromIndex,最后]中查询str的第一次出现下标
（3）`int lastIndexOf(String str)`：在当前字符序列中查询str的最后一次出现下标
（4）`int lastIndexOf(String str, int fromIndex)`：在当前字符序列[fromIndex,最后]中查询str的最后一次出现下标
（5）`String substring(int start)`：截取当前字符序列[start,最后]
（6）`String substring(int start, int end)`：截取当前字符序列[start,end)
（7）`String toString()`：返回此序列中数据的字符串表示形式
（8）`void setLength(int newLength)` ：设置当前字符序列长度为newLength，此方法会直接覆盖掉不符合长度的后面的值。覆盖值为`\0`

### 日期API

> * System类提供的public static long currentTimeMillis()：用来返回当前时间与1970年1月1日0时0分0秒之间以毫秒为单位的时间差。
>
> * 计算世界时间的主要标准有：
>   * UTC(Coordinated Universal Time)
>   * GMT(Greenwich Mean Time)
>   * CST(Central Standard Time)
>   * 注：在国际无线电通信场合，为了统一起见，使用一个统一的时间，称为通用协调时(UTC, Universal Time Coordinated)。UTC与格林尼治平均时(GMT, Greenwich Mean Time)一样，都与英国伦敦的本地时相同。这里，UTC与GMT含义完全相同。

#### java.util.Date

表示特定的瞬间，精确到毫秒。

- 构造器：
  - `Date()`：使用无参构造器创建的对象可以获取本地当前时间。
  - `Date(long 毫秒数)`：把该毫秒值换算成日期时间对象
- 常用方法
  - `long getTime()`: 返回自 1970 年 1 月 1 日 00:00:00 GMT 以来此 Date 对象表示的毫秒数。
  - `toString()`: 把此 Date 对象转换为以下形式的 String： dow mon dd hh:mm:ss zzz yyyy 其中： dow 是一周中的某一天 (Sun, Mon, Tue, Wed, Thu, Fri, Sat)，zzz是时间标准。
  - 其它很多方法都过时了。

```java
        Date date1 = new Date();    //创建一个基于当前系统时间的Date的实例
        System.out.println(date1);  //Fri Aug 11 11:16:30 CST 2023

        long milliTime = date1.getTime();
        System.out.println("对应的毫秒数为：" + milliTime); //1691723790630总共13位

        Date date2 = new Date(1370202256045L);  //创建一个基于指定时间戳的Date的实例
        System.out.println(date2);  //Mon Jun 03 03:44:16 CST 2013
```

#### java.sql.Date

是java.util.Date的子类，主要用于将java的Date类转换为数据库对应的日期格式

```java
	////字符串 ---> java.util.Date ---> java.sql.Date
	SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String timeStr = "2023-02-11";
        //得到java.util.Date
        Date date = simpleDateFormat.parse(timeStr);
        java.sql.Date dateSql = new java.sql.Date(date.getTime());
        System.out.println(dateSql);	//2023-02-11
```

#### java.text.SimpleDateFormat

> java.text.SimpleDateFormat类是一个不与语言环境有关的方式来格式化和解析日期的具体类。

- **构造器：**
  - `SimpleDateFormat()` ：默认的模式和语言环境创建对象
  - `public SimpleDateFormat(String pattern)`：该构造方法可以用参数pattern指定的格式创建一个对象
- **格式化（日期 --> 文本）：**
  - `public String format(Date date)`：方法格式化时间对象date
- **解析（文本 --> 日期）：**
  - `public Date parse(String source)`：从给定字符串的开始解析文本，以生成一个日期。

![1691724964810](Java.assets/1691724964810.png)

```java
//格式化
@Test
public void test1(){
    Date d = new Date();

    SimpleDateFormat sf = new SimpleDateFormat("yyyy年MM月dd日 HH时mm分ss秒 SSS毫秒  E Z");
    //把Date日期转成字符串，按照指定的格式转
    String str = sf.format(d);
    System.out.println(str);
}
//解析
@Test
public void test2() throws ParseException{
    String str = "2022年06月06日 16时03分14秒 545毫秒  星期四 +0800";
    SimpleDateFormat sf = new SimpleDateFormat("yyyy年MM月dd日 HH时mm分ss秒 SSS毫秒  E Z");
    Date d = sf.parse(str);
    System.out.println(d);
}
```

#### java.util.Calendar(日历)

> - Date类的API大部分被废弃了，替换为Calendar。
> - `Calendar` 类是一个抽象类，主用用于完成日期字段之间相互操作的功能。
> - 获取Calendar实例的方法
>   - 使用`Calendar.getInstance()`方法

<img src="Java.assets/1691725153677.png" alt="image-20220511105252261" style="zoom:67%;" />

一个Calendar的实例是系统时间的抽象表示，可以修改或获取 YEAR、MONTH、DAY_OF_WEEK、HOUR_OF_DAY 、MINUTE、SECOND等 `日历字段`对应的时间值。

- `public int get(int field)`：返回给定日历字段的值
- `public void set(int field,int value)` ：将给定的日历字段设置为指定的值
- `public void add(int field,int amount)`：根据日历的规则，为给定的日历字段添加或者减去指定的时间量
- `public final Date getTime()`：==将Calendar转成Date对象==
- `public final void setTime(Date date)`：使用指定的Date对象重置Calendar的时间

**常用字段**

> 注：
>
> - 获取月份时：一月是0，二月是1，以此类推，12月是11
> - 获取星期时：周日是1，周二是2 ， 。。。。周六是7

![1691725507318](Java.assets/1691725507318.png)

```java
        Calendar calendar = Calendar.getInstance();
        System.out.println(calendar.getClass());    //class java.util.GregorianCalendar

        //get(int field)
        System.out.println(calendar.get(Calendar.DAY_OF_MONTH));
        System.out.println(calendar.get(Calendar.DAY_OF_YEAR));

        //set(int field,xx)
        calendar.set(Calendar.DAY_OF_MONTH, 21);
        System.out.println(calendar.get(Calendar.DAY_OF_MONTH));

        //add(int field,xx)
        calendar.add(Calendar.DAY_OF_MONTH, 3);
        calendar.add(Calendar.DAY_OF_MONTH, -5);
        System.out.println(calendar.get(Calendar.DAY_OF_MONTH));

        //getTime():Calender --> Date
        Date date = calendar.getTime();
        System.out.println(date);

        //setTime():使用指定Date重置Calendar
        Date date1 = new Date();
        calendar.setTime(date1);
        System.out.println(calendar.get(calendar.get(Calendar.DAY_OF_MONTH)));
```

#### Date与Calendar的缺陷性

- 可变性：像日期和时间这样的类应该是不可变的。
- 偏移性：Date中的年份是从1900开始的，而月份都从0开始。
- 格式化：格式化只对Date有用，Calendar则不行。
- 此外，它们也不是线程安全的；不能处理闰秒等。

**新的日期API**

- `java.time` – 包含值对象的基础包
- `java.time.chrono` – 提供对不同的日历系统的访问。
- `java.time.format` – 格式化和解析时间和日期
- `java.time.temporal` – 包括底层框架和扩展特性
- `java.time.zone` – 包含时区支持的类

说明：新的 java.time 中包含了所有关于时钟（Clock），本地日期（LocalDate）、本地时间（LocalTime）、本地日期时间（LocalDateTime）、时区（ZonedDateTime）和持续时间（Duration）的类。

#### 本地日期时间：LocalDate、LocalTime、LocalDateTime

![1691737908017](Java.assets/1691737908017.png)

> 类似于Calendar
>
> 实例化：`now()` / `of(xxx,xx,xx)`
>
> 方法：`get()` / `withXxx()` / `plusXxx()` / `minusXxx()`...

| 方法                                                         | **描述**                                                     |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| `now() `/ now(ZoneId zone)                                   | 静态方法，根据当前时间创建对象/指定时区的对象                |
| `of(xx,xx,xx,xx,xx,xxx)`                                     | 静态方法，根据指定日期/时间创建对象                          |
| getDayOfMonth()/getDayOfYear()                               | 获得月份天数(1-31) /获得年份天数(1-366)                      |
| getDayOfWeek()                                               | 获得星期几(返回一个 DayOfWeek 枚举值)                        |
| getMonth()                                                   | 获得月份, 返回一个 Month 枚举值                              |
| getMonthValue() / getYear()                                  | 获得月份(1-12) /获得年份                                     |
| getHours()/getMinute()/getSecond()                           | 获得当前对象对应的小时、分钟、秒                             |
| withDayOfMonth()/withDayOfYear()/withMonth()/withYear()      | 将月份天数、年份天数、月份、年份修改为指定的值并返回新的对象 |
| with(TemporalAdjuster  t)                                    | 将当前日期时间设置为校对器指定的日期时间                     |
| plusDays(), plusWeeks(), plusMonths(), plusYears(),plusHours() | 向当前对象添加几天、几周、几个月、几年、几小时               |
| minusMonths() / minusWeeks()/minusDays()/minusYears()/minusHours() | 从当前对象减去几月、几周、几天、几年、几小时                 |
| plus(TemporalAmount t)/minus(TemporalAmount t)               | 添加或减少一个 Duration 或 Period                            |
| isBefore()/isAfter()                                         | 比较两个 LocalDate                                           |
| isLeapYear()                                                 | 判断是否是闰年（在LocalDate类中声明）                        |
| format(DateTimeFormatter  t)                                 | 格式化本地日期、时间，返回一个字符串                         |
| parse(Charsequence text)                                     | 将指定格式的字符串解析为日期、时间                           |

```java
        //now():获取当前日期和时间对应的实例
        LocalDate localDate = LocalDate.now();
        LocalTime localTime = LocalTime.now();
        LocalDateTime localDateTime = LocalDateTime.now();

        System.out.println(localDate);  //2023-08-11
        System.out.println(localTime);  //14:30:02.173631400
        System.out.println(localDateTime);  //2023-08-11T14:30:02.173631400

        //of():获取指定的日期、时间对应的实例
        LocalDate localDate1 = LocalDate.of(1998, 5, 6);
        LocalDateTime localDateTime1 = LocalDateTime.of(2001, 12, 31, 11, 11, 11);
        System.out.println(localDate1); //1998-05-06
        System.out.println(localDateTime1); //2001-12-31T11:11:11

        //getXXX()
        LocalDateTime localDateTime2 = LocalDateTime.now(); 
        System.out.println(localDateTime2.getDayOfMonth()); //11

        //withXxx()
        LocalDateTime localDateTime3 = localDateTime2.withDayOfMonth(5);
        System.out.println(localDateTime3); //2023-08-05T14:35:56.361559100

        //plusXxx()
        LocalDateTime localDateTime4 = localDateTime2.plusDays(11);
        System.out.println(localDateTime4); //2023-08-22T14:35:56.361559100
```



#### 瞬时：Instant

> 实例化：`now()` / `ofEpochMilli()`
>
> 方法：`toEpochMilli()`

- Instant：时间线上的一个瞬时点。 这可能被用来记录应用程序中的事件时间戳。
  - 时间戳是指格林威治时间1970年01月01日00时00分00秒(北京时间1970年01月01日08时00分00秒)起至现在的总秒数。
- `java.time.Instant`表示时间线上的一点，而不需要任何上下文信息，例如，时区。概念上讲，`它只是简单的表示自1970年1月1日0时0分0秒（UTC）开始的秒数。`

| **方法**                        | **描述**                                                     |
| ------------------------------- | ------------------------------------------------------------ |
| `now()`                         | 静态方法，返回默认UTC时区的Instant类的对象                   |
| `ofEpochMilli(long epochMilli)` | 静态方法，返回在1970-01-01 00:00:00基础上加上指定毫秒数之后的Instant类的对象 |
| atOffset(ZoneOffset offset)     | 结合即时的偏移来创建一个 OffsetDateTime                      |
| `toEpochMilli()`                | 返回1970-01-01 00:00:00到当前时间的毫秒数，即为时间戳        |

> 中国大陆、中国香港、中国澳门、中国台湾、蒙古国、新加坡、马来西亚、菲律宾、西澳大利亚州的时间与UTC的时差均为+8，也就是UTC+8。
>
> instant.atOffset(ZoneOffset.ofHours(8));

> 整个地球分为二十四时区，每个时区都有自己的本地时间。北京时区是东八区，领先UTC八个小时，在电子邮件信头的Date域记为+0800。如果在电子邮件的信头中有这么一行： 
>
> Date: Fri, 08 Nov 2002 09:42:22 +0800 
>
> 说明信件的发送地的地方时间是二○○二年十一月八号，星期五，早上九点四十二分（二十二秒），这个地方的本地时领先UTC八个小时(+0800， 就是东八区时间)。电子邮件信头的Date域使用二十四小时的时钟，而不使用AM和PM来标记上下午。 

![1691736282486](Java.assets/1691736282486.png)

```java
     	//now():
        Instant instant = Instant.now();
        System.out.println(instant);    //2023-08-11T06:49:02.683787700Z

        OffsetDateTime instant1 = instant.atOffset(ZoneOffset.ofHours(8));
        System.out.println(instant1);   //2023-08-11T14:49:02.683787700+08:00

        Instant instant2 = Instant.ofEpochMilli(24123123312L);
        System.out.println(instant2);   //1970-10-07T04:52:03.312Z

        long milliTime = instant.toEpochMilli();
        System.out.println(milliTime);  //1691736542683

        System.out.println(new Date().getTime());   //1691736542695
```

#### 日期时间格式化：DateTimeFormatter

> 用于格式化和解析LocalDate,LocalTime,LocalDateTime

该类提供了三种格式化方法：

- (了解)预定义的标准格式。如：`ISO_LOCAL_DATE_TIME`、`ISO_LOCAL_DATE`、`ISO_LOCAL_TIME`

- (了解)本地化相关的格式。如：ofLocalizedDate(FormatStyle.LONG)

  ```java
  // 本地化相关的格式。如：ofLocalizedDateTime()
  // FormatStyle.MEDIUM / FormatStyle.SHORT :适用于LocalDateTime
  				
  // 本地化相关的格式。如：ofLocalizedDate()
  // FormatStyle.FULL / FormatStyle.LONG / FormatStyle.MEDIUM / FormatStyle.SHORT : 适用于LocalDate
  ```

- 自定义的格式。如：ofPattern(“yyyy-MM-dd hh:mm:ss”)

| **方**   **法**                    | **描**   **述**                                     |
| ---------------------------------- | --------------------------------------------------- |
| **ofPattern(String**  **pattern)** | 静态方法，返回一个指定字符串格式的DateTimeFormatter |
| **format(TemporalAccessor** **t)** | 格式化一个日期、时间，返回字符串                    |
| **parse(CharSequence**  **text)**  | 将指定格式的字符序列解析为一个日期、时间            |

举例：

```java
import org.junit.Test;

import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.time.format.FormatStyle;

public class TestDatetimeFormatter {
    @Test
    public void test1(){
        // 方式一：预定义的标准格式。如：ISO_LOCAL_DATE_TIME;ISO_LOCAL_DATE;ISO_LOCAL_TIME
        DateTimeFormatter formatter = DateTimeFormatter.ISO_LOCAL_DATE_TIME;
        // 格式化:日期-->字符串
        LocalDateTime localDateTime = LocalDateTime.now();
        String str1 = formatter.format(localDateTime);
        System.out.println(localDateTime);
        System.out.println(str1);//2022-12-04T21:02:14.808

        // 解析：字符串 -->日期
        TemporalAccessor parse = formatter.parse("2022-12-04T21:02:14.808");
        LocalDateTime dateTime = LocalDateTime.from(parse);
        System.out.println(dateTime);
    }

    @Test
    public void test2(){
        LocalDateTime localDateTime = LocalDateTime.now();
        // 方式二：
        // 本地化相关的格式。如：ofLocalizedDateTime()
        // FormatStyle.LONG / FormatStyle.MEDIUM / FormatStyle.SHORT :适用于LocalDateTime
        DateTimeFormatter formatter1 = DateTimeFormatter.ofLocalizedDateTime(FormatStyle.LONG);
        
        // 格式化
        String str2 = formatter1.format(localDateTime);
        System.out.println(str2);// 2022年12月4日 下午09时03分55秒

        // 本地化相关的格式。如：ofLocalizedDate()
        // FormatStyle.FULL / FormatStyle.LONG / FormatStyle.MEDIUM / FormatStyle.SHORT : 适用于LocalDate
        DateTimeFormatter formatter2 = DateTimeFormatter.ofLocalizedDate(FormatStyle.FULL);
        // 格式化
        String str3 = formatter2.format(LocalDate.now());
        System.out.println(str3);// 2022年12月4日 星期日
    }

    @Test
    public void test3(){
        //方式三：自定义的方式（关注、重点）
        DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
        //格式化
        String strDateTime = dateTimeFormatter.format(LocalDateTime.now());
        System.out.println(strDateTime); //2022/12/04 21:05:42
        //解析
        TemporalAccessor accessor = dateTimeFormatter.parse("2022/12/04 21:05:42");
        LocalDateTime localDateTime = LocalDateTime.from(accessor);
        System.out.println(localDateTime); //2022-12-04T21:05:42
    }
}
```

#### 与传统日期格式的转换

> 其它具体API详见[<font color="violet">第11章_常用类和基础API</font>](./相关资料/第11章_常用类和基础API)

| **类**                                                       | **To** **遗留类**                     | **From** **遗留类**         |
| ------------------------------------------------------------ | ------------------------------------- | --------------------------- |
| **java.time.Instant与java.util.Date**                        | Date.from(instant)                    | date.toInstant()            |
| **java.time.Instant与java.sql.Timestamp**                    | Timestamp.from(instant)               | timestamp.toInstant()       |
| **java.time.ZonedDateTime与java.util.GregorianCalendar**     | GregorianCalendar.from(zonedDateTime) | cal.toZonedDateTime()       |
| **java.time.LocalDate与java.sql.Time**                       | Date.valueOf(localDate)               | date.toLocalDate()          |
| **java.time.LocalTime与java.sql.Time**                       | Date.valueOf(localDate)               | date.toLocalTime()          |
| **java.time.LocalDateTime与java.sql.Timestamp**              | Timestamp.valueOf(localDateTime)      | timestamp.toLocalDateTime() |
| **java.time.ZoneId与java.util.TimeZone**                     | Timezone.getTimeZone(id)              | timeZone.toZoneId()         |
| **java.time.format.DateTimeFormatter与java.text.DateFormat** | formatter.toFormat()                  | 无                          |

### Java比较器

> 对象之间的比较

#### 自然排序：java.lang.Comparable

> ① 具体的类A实现Comparable接口
> ② 重写Comparable接口中的compareTo(Object obj)方法，在此方法中指明比较类A的对象的大小的标准
> ③ 创建类A的多个实例，进行大小的比较或排序。

```java
package java.lang;

public interface Comparable{
    int compareTo(Object obj);
}
```

·Comparable 的典型实现：(`默认都是从小到大排列的`)

- String：按照字符串中字符的Unicode值进行比较
- Character：按照字符的Unicode值来进行比较
- 数值类型对应的包装类以及BigInteger、BigDecimal：按照它们对应的数值大小进行比较
- Boolean：true 对应的包装类实例大于 false 对应的包装类实例
- Date、Time等：后面的日期时间比前面的日期时间大

```java
@Test
    public void test(){
        Product[] products = new Product[5];
        products[0] = new Product("HuaweiMate50pro",6299);
        products[1] = new Product("Xiaomi13pro",4999);
        products[2] = new Product("VivoX90pro",5999);
        products[3] = new Product("Iphone14ProMax",9999);
        products[4] = new Product("HonorMagic4",6299);

        Arrays.sort(products);
        //排序后遍历
        for (Product product : products) {
            System.out.println(product);
        }
    }
```

```java
public class Product implements Comparable<Product>{ //商品类

    private String name;//商品名称
    private double price;//价格

    public Product(String name, double price) {
        this.name = name;
        this.price = price;
    }

    public Product() {
    }

   //.....省略get、set、toString方法

    /*
     * 在此方法中，指明如何判断当前类的对象的大小。比如：按照价格的高低进行大小的比较。（或从低到高排序）
     * 如果返回值是正数：当前对象大。
     * 如果返回值是负数：当前对象小。
     * 如果返回值是0，一样大。
     * */
    /*@Override
    public int compareTo(Product o) {
        if (o == this)
            return 0;

        return Double.compare(this.price, o.price);
    }*/

    //比较的标准：先比较价格（从大到小），价格相同，进行名字的比较 （从小到大）
    @Override
    public int compareTo(Product o) {
        if (this == o)
            return 0;

        int value = Double.compare(this.price, o.price);
        if (value != 0)
            return -value;

        return this.name.compareTo(o.name);
    }
}
```

#### 定制排序：java.util.Comparator

> ① 创建一个实现了Comparator接口的实现类A
> ② 实现类A要求重写Comparator接口中的抽象方法compare(Object o1,Object o2)，在此方法中指明要
>    比较大小的对象的大小关系。（比如，String类、Product类）
> ③ 创建此实现类A的对象，并将此对象传入到相关方法的参数位置即可。（比如：Arrays.sort(..,类A的实例)）

```java
package java.util;

public interface Comparator{
    int compare(Object o1,Object o2);
}
```

例子：

```java
 public void test(){
        Product[] products = new Product[5];
        products[0] = new Product("HuaweiMate50pro",6299);
        products[1] = new Product("Xiaomi13pro",4999);
        products[2] = new Product("VivoX90pro",5999);
        products[3] = new Product("Iphone14ProMax",9999);
        products[4] = new Product("HonorMagic4",6299);

        //按照价格从高到低排序
        Comparator<Product> comparator = new Comparator<>() {
            @Override
            public int compare(Product o1, Product o2) {
                if (o1 == o2)
                    return 0;
                return -Double.compare(o1.getPrice(), o2.getPrice());
            }
        };

        //按照name从低到高排序
        Comparator<Product> comparator1 = new Comparator<>() {
            @Override
            public int compare(Product o1, Product o2) {
                if (o1 == o2)
                    return 0;
                return o1.getName().compareTo(o2.getName());
            }
        };

        Arrays.sort(products, comparator1);
        //排序后遍历
        for (Product product : products) {
            System.out.println(product);
        }

    }
```

```java
public class Product implements Comparable<Product>{ //商品类

    private String name;//商品名称
    private double price;//价格

    public Product(String name, double price) {
        this.name = name;
        this.price = price;
    }

    public Product() {
    }

   //.....省略get、set、toString方法

    /*
     * 在此方法中，指明如何判断当前类的对象的大小。比如：按照价格的高低进行大小的比较。（或从低到高排序）
     * 如果返回值是正数：当前对象大。
     * 如果返回值是负数：当前对象小。
     * 如果返回值是0，一样大。
     * */
    /*@Override
    public int compareTo(Product o) {
        if (o == this)
            return 0;

        return Double.compare(this.price, o.price);
    }*/

    //比较的标准：先比较价格（从大到小），价格相同，进行名字的比较 （从小到大）
    @Override
    public int compareTo(Product o) {
        if (this == o)
            return 0;

        int value = Double.compare(this.price, o.price);
        if (value != 0)
            return -value;

        return this.name.compareTo(o.name);
    }
}
```

#### 两种方式的简单对比

> 角度一：
>     自然排序：单一的，唯一的
>     定制排序：灵活的，多样的
>
> 角度二：
>     自然排序：一劳永逸的
>     定制排序：临时的
>
> 角度三：细节
>     自然排序：对应的接口是Comparable，对应的抽象方法compareTo(Object obj)
>     定制排序：对应的接口是Comparator，对应的抽象方法compare(Object obj1,Object obj2)

### 系统相关类

####  java.lang.System类

- System类代表系统，系统级的很多属性和控制方法都放置在该类的内部。该类位于`java.lang包`。

- 由于该类的构造器是private的，所以无法创建该类的对象。其内部的成员变量和成员方法都是`static的`，所以也可以很方便的进行调用。

- 成员变量   Scanner scan = new Scanner(System.in);

  - System类内部包含`in`、`out`和`err`三个成员变量，分别代表标准输入流(键盘输入)，标准输出流(显示器)和标准错误输出流(显示器)。

- 成员方法

  - `native long currentTimeMillis()`：
    该方法的作用是返回当前的计算机时间，时间的表达格式为当前计算机时间和GMT时间(格林威治时间)1970年1月1号0时0分0秒所差的毫秒数。

  - `void exit(int status)`：
    该方法的作用是退出程序。其中status的值为0代表正常退出，非零代表异常退出。使用该方法可以在图形界面编程中实现程序的退出功能等。

  - `void gc()`：
    该方法的作用是请求系统进行垃圾回收。至于系统是否立刻回收，则取决于系统中垃圾回收算法的实现以及系统执行时的情况。

  - `String getProperty(String key)`：
    该方法的作用是获得系统中属性名为key的属性对应的值。系统中常见的属性名以及属性的作用如下表所示：

    ![1691760593062](Java.assets/1691760593062.png)

  ```java
          String javaVersion = System.getProperty("java.version");
          System.out.println("java的version:" + javaVersion);  //java的version:17.0.7
  
          String javaHome = System.getProperty("java.home");
          System.out.println("java的home:" + javaHome);    //java的home:D:\Program Files\Java\jdk-17
  
          String osName = System.getProperty("os.name");
          System.out.println("os的name:" + osName);    //os的name:Windows 11
  
          String osVersion = System.getProperty("os.version");
          System.out.println("os的version:" + osVersion);  //os的version:10.0
  
          String userName = System.getProperty("user.name");
          System.out.println("user的name:" + userName);    //user的name:slight-leaves
  
          String userHome = System.getProperty("user.home");
          System.out.println("user的home:" + userHome);    //user的home:C:\Users\slight-leaves
  
          String userDir = System.getProperty("user.dir");
          System.out.println("user的dor:" + userDir);  //user的dor:C:\Users\slight-leaves\Desktop\快捷方式\暂时的课\....
  ```

#### java.lang.Runtime类

> 每一个Java进程对应一个RumTime实例

每个 Java 应用程序都有一个 `Runtime` 类实例，使应用程序能够与其运行的环境相连接。

`public static Runtime getRuntime()`： 返回与当前 Java 应用程序相关的运行时对象。应用程序不能创建自己的 Runtime 类实例。

`public long totalMemory()`：返回 Java 虚拟机中初始化时的内存总量。此方法返回的值可能随时间的推移而变化，这取决于主机环境。默认为物理电脑内存的1/64。

`public long maxMemory()`：返回 Java 虚拟机中最大程度能使用的内存总量。默认为物理电脑内存的1/4。

`public long freeMemory()`：回 Java 虚拟机中的空闲内存量。调用 gc 方法可能导致 freeMemory 返回值的增加。

```java
public class TestRuntime {
    public static void main(String[] args) {
        Runtime runtime = Runtime.getRuntime();
        long initialMemory = runtime.totalMemory(); //获取虚拟机初始化时堆内存总量
        long maxMemory = runtime.maxMemory(); //获取虚拟机最大堆内存总量
        String str = "";
        //模拟占用内存
        for (int i = 0; i < 10000; i++) {
            str += i;
        }
        long freeMemory = runtime.freeMemory(); //获取空闲堆内存总量
        System.out.println("总内存：" + initialMemory / 1024 / 1024 * 64 + "MB");
        System.out.println("总内存：" + maxMemory / 1024 / 1024 * 4 + "MB");
        System.out.println("空闲内存：" + freeMemory / 1024 / 1024 + "MB") ;
        System.out.println("已用内存：" + (initialMemory-freeMemory) / 1024 / 1024 + "MB");
    }
}
```

#### java.lang.Math类

`java.lang.Math` 类包含用于执行基本数学运算的方法，如初等指数、对数、平方根和三角函数。类似这样的工具类，其所有方法均为静态方法，并且不会创建对象，调用起来非常简单。

- `public static double abs(double a) ` ：返回 double 值的绝对值。 

```java
double d1 = Math.abs(-5); //d1的值为5
double d2 = Math.abs(5); //d2的值为5
```

- `public static double ceil(double a)` ：返回大于等于参数的最小的整数。

```java
double d1 = Math.ceil(3.3); //d1的值为 4.0
double d2 = Math.ceil(-3.3); //d2的值为 -3.0
double d3 = Math.ceil(5.1); //d3的值为 6.0
```

- `public static double floor(double a) ` ：返回小于等于参数最大的整数。

```java
double d1 = Math.floor(3.3); //d1的值为3.0
double d2 = Math.floor(-3.3); //d2的值为-4.0
double d3 = Math.floor(5.1); //d3的值为 5.0
```

- `public static long round(double a)` ：返回最接近参数的 long。(相当于四舍五入方法)  

```java
long d1 = Math.round(5.5); //d1的值为6
long d2 = Math.round(5.4); //d2的值为5
long d3 = Math.round(-3.3); //d3的值为-3
long d4 = Math.round(-3.8); //d4的值为-4
```

- public static double pow(double a,double b)：返回a的b幂次方法
- public static double sqrt(double a)：返回a的平方根
- `public static double random()`：返回[0,1)的随机值
- public static final double PI：返回圆周率
- public static double max(double x, double y)：返回x,y中的最大值
- public static double min(double x, double y)：返回x,y中的最小值
- 其它：acos,asin,atan,cos,sin,tan 三角函数

```java
double result = Math.pow(2,31);
double sqrt = Math.sqrt(256);
double rand = Math.random();
double pi = Math.PI;
```

#### 其它类

BigInteger类、BigDecimal类。其它类详见[<font color="violet">第11章_常用类和基础API</font>](./相关资料/第11章_常用类和基础API)

### 其它知识点

#### String 中 “+”是怎样实现的?

变量 + 常量 、变量+变量：创建一个StringBuilder的实例，通过append()添加字符串，最后调用toString()返回一个字符串。（toString()内部new 一个String的实例）

#### subString的底层实现

```java
String str = "hello";
String subStr = str.subString(1,3);  //底层是new的方式返回一个subStr，实体内容是"el"
```

## 集合

> 内存层面需要针对于多个数据进行存储。此时，可以考虑的容器有：数组、集合类

### 概述

![集合和数组的区别](Java.assets/20180803193134355.png)

#### 数组的特点：

* 数组一旦初始化，其长度就是确定的。

* 数组中的多个元素是依次紧密排列的，有序的，可重复的

* (优点) 数组一旦初始化完成，其元素的类型就是确定的。不是此类型的元素，就不能添加到此数组中。

* (优点)元素的类型既可以是基本数据类型，也可以是引用数据类型。

  ```java
        int[] arr = new int[10];
        arr[0] = 1;
        arr[1] = "AA";//编译报错
  
        Object[] arr1 = new Object[10];
        arr1[0] = new String();
        arr1[1] = new Date();
  ```

**数组存储多个数据方面的弊端**

* 数组一旦初始化，其长度就不可变了。
* 数组中存储数据特点的单一性。对于无序的、不可重复的场景的多个数据就无能为力了。
* 数组中可用的方法、属性都极少。具体的需求，都需要自己来组织相关的代码逻辑。
* 针对于数组中元素的删除、插入操作，性能较差。

#### Java集合框架体系

> 注：Set的底层是Map，只不过值全部指向一个Object对象，可以看作为空

> java.util.Collection:存储一个一个的数据
>     |-----子接口：List:存储有序的、可重复的数据 ("动态"数组)
>            |---- ArrayList(主要实现类)、LinkedList、Vector
>
> ​	|-----子接口：Set:存储无序的、不可重复的数据(高中学习的集合)
> ​			|---- HashSet(主要实现类)、LinkedHashSet、TreeSet
>
> java.util.Map:存储一对一对的数据(key-value键值对，(x1,y1)、(x2,y2) --> y=f(x),类似于高中的函数)
>     |---- HashMap(主要实现类)、LinkedHashMap、TreeMap、Hashtable、Properties

**集合框架全图**

![1691773517678](Java.assets/集合框架全图.png)

* 简图1：**Collection接口继承树**

  ![1691774419300](Java.assets/1691774419300.png)

* 简图2：**Map接口继承树**

  ![1691774479050](Java.assets/1691774479050.png)

### Collection接口及方法

> Collection 接口是 List和Set接口的父接口，该接口里定义的方法既可用于操作 Set 集合
>
> [<font color="violet">Collection.xmind</font>](./相关资料/Xmind/相关API/集合/Collection.xmind)

![1692035287707](Java.assets/1692035287707.png)

#### 添加

> 注意：coll.addAll(other);与coll.add(other);
>
> ![1691774848120](Java.assets/1691774848120.png)

（1）`add(E obj)`：添加元素对象到当前集合中
（2）`addAll(Collection other)`：添加other集合中的所有元素对象到当前集合中，即this = this ∪ other

```java
        Collection collection = new ArrayList<>();

        //add()
        collection.add("AA");
        collection.add(123);    //不能存基础类型，此处为自动装箱
        collection.add("赵锋平");
        collection.add(new Object());
        collection.add(new Person("Jerry", 24));

        System.out.println(collection);

        //addAll(Collection other)
        Collection collection1 = new ArrayList<>();
        collection1.add("BB");
        collection1.add(456);
        System.out.println(collection.size());

        //collection.add(collection1);
        collection.addAll(collection1); //注意与上一行的区别
        System.out.println(collection);
        System.out.println(collection.size());
```

#### 判断

> 注：此处判断是否为同一个元素的保准并不是比地址，而是比`equals()`方法！！

（3）`int size()`：获取当前集合中实际存储的元素个数
（4）`boolean isEmpty()`：判断当前集合是否为空集合
（5）`boolean contains(Object obj)`：判断当前集合中是否存在一个与obj对象==equals==返回true的元素
（6）`boolean containsAll(Collection coll)`：判断coll集合中的元素是否在当前集合中都存在。即coll集合是否是当前集合的“子集”
（7）`boolean equals(Object obj)`：判断当前集合与obj是否相等

```java
        Collection collection = new ArrayList<>();
        collection.add("AA");
        collection.add(128);    //不能存基础类型，此处为自动装箱
        collection.add("赵锋平");
        collection.add(new Object());
        collection.add(new Person("Jerry", 24));

        //isEmpty()
        System.out.println(collection.isEmpty());

        //contains(Object obj)
        System.out.println(collection.contains("AA"));  //true
        System.out.println(collection.contains(128));   //true
        System.out.println(collection.contains(new String("赵锋平"))); //true
        System.out.println(collection.contains(new Person("Jerry", 18)));   //false-->true

        //containsAll(Collection coll)
        Collection collection1 = new ArrayList();

        //add()
        collection1.add("AA");
        collection1.add(128);
//        coll1.add("BB");

        System.out.println(collection.containsAll(collection1));
```

#### 删除

（8）`void clear()`：清空集合元素
（9） `boolean remove(Object obj)` ：从当前集合中删除第一个找到的与obj对象equals返回true的元素。
（10）`boolean removeAll(Collection coll)`：从当前集合中删除所有与coll集合中相同的元素。即this = this - this ∩ coll
（11）`boolean retainAll(Collection coll)`：从当前集合中删除两个集合中不同的元素，使得当前集合仅保留与coll集合中的元素相同的元素，即当前集合中仅保留两个集合的交集，即this  = this ∩ coll；

```java
        Collection collection = new ArrayList<>();

        collection.add("AA");
        collection.add(128);    //不能存基础类型，此处为自动装箱
        collection.add("赵锋平");
        collection.add(new Object());
        collection.add(new Person("Jerry", 24));

        System.out.println(collection);
        /*collection.clear();
        System.out.println(collection);
        System.out.println(collection.size());*/

        //remove(Object obj)
        collection.remove(new Person("Jerry", 24));
        collection.remove("AA");
        System.out.println(collection);
```

#### 其它

（12）`Object[] toArray()`：返回包含当前集合中所有元素的数组
（13）`hashCode()`：获取集合对象的哈希值
（14）`iterator()`：返回迭代器对象，用于集合遍历

**数组----->集合**

```java
  	String[] arr = new String[]{"AA", "BB", "CC"};
        Collection collection =  Arrays.asList(arr);
        System.out.println(collection);

        List<String> list = Arrays.asList("AA", "BB", "CC", "DD");
        System.out.println(list);
```

**集合----->数组**

```java
	Collection collection = new ArrayList();
        collection.add("AA");
        collection.add("AA");
        Person p1 = new Person("Tom",12);
        collection.add(p1);
        collection.add(128);//自动装箱
        collection.add(new String("赵锋平"));

        //集合 ---> 数组
        Object[] array = collection.toArray();
        System.out.println(Arrays.toString(array))
```

### Iterator(迭代器)接口

> Collection接口继承了java.lang.Iterable接口，该接口有一个iterator()方法。用以返回一个实现了Iterator接口的对象。
>
> - `public Iterator iterator()`: 获取集合对应的迭代器，用来遍历集合中的元素的。
> - 集合对象每次调用iterator()方法都得到一个全新的迭代器对象，默认游标都在集合的第一个元素之前。

> 注：
>
> * 迭代器是设计模式的一种
> * 迭代器不负责数据的存储，负责对集合的遍历

#### 迭代器遍历原理

![1691821556952](Java.assets/1691821556952.png)

#### 用迭代器删除元素

使用Iterator迭代器删除元素：java.util.Iterator迭代器中有一个方法：void remove() ;

```java
Iterator iter = coll.iterator();//回到起点
while(iter.hasNext()){
    Object obj = iter.next();
    if(obj.equals("Tom")){
        iter.remove();
    }
}
```

注意：

- Iterator可以删除集合的元素，但是遍历过程中通过迭代器对象的remove方法，不是集合对象的remove方法。
- 如果还未调用next()或在上一次调用 next() 方法之后已经调用了 remove() 方法，再调用remove()都会报IllegalStateException。
- Collection已经有remove(xx)方法了，为什么Iterator迭代器还要提供删除方法呢？因为迭代器的remove()可以按指定的条件进行删除。

例如：要删除以下集合元素中的偶数

```java
import org.junit.Test;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

public class TestIteratorRemove {
    @Test
    public void test01(){
        Collection coll = new ArrayList();
        coll.add(1);
        coll.add(2);
        coll.add(3);
        coll.add(4);
        coll.add(5);
        coll.add(6);

        Iterator iterator = coll.iterator();
        while(iterator.hasNext()){
            Integer element = (Integer) iterator.next();
            if(element % 2 == 0){
                iterator.remove();
            }
        }
        System.out.println(coll);
    }
}

```

在JDK8.0时，Collection接口有了removeIf 方法，即可以根据条件删除。（第18章中再讲）

```java
import org.junit.Test;

import java.util.ArrayList;
import java.util.Collection;
import java.util.function.Predicate;

public class TestCollectionRemoveIf {
    @Test
    public void test01(){
        Collection coll = new ArrayList();
        coll.add("小李广");
        coll.add("扫地僧");
        coll.add("石破天");
        coll.add("佛地魔");
        System.out.println("coll = " + coll);

        coll.removeIf(new Predicate() {
            @Override
            public boolean test(Object o) {
                String str = (String) o;
                return str.contains("地");
            }
        });
        System.out.println("删除包含\"地\"字的元素之后coll = " + coll);
    }
}
```

#### foreach循环

> foreach循环（也称增强for循环）是 JDK5.0 中定义的一个高级for循环，专门用来`遍历数组和集合`的。
>
> foreach底层用的是迭代器
>
> ![1691823684023](Java.assets/1691823684023.png)

**foreach循环语法格式**

```java
for(元素的数据类型 局部变量 : Collection集合或数组){ 
  	//操作局部变量的输出操作
}
//这里局部变量就是一个临时变量，自己命名就可以
```

要格外注意foreach能否更改元素

```java
        String[] arr1 = new String[]{"AA", "CC", "DD"};

        //赋值操作1
        for(int i = 0;i < arr1.length;i++){
            arr1[i] = "MM";     //改成功
        }

        //赋值操作2
//        for (String s : arr1) {   //把地址给了s，s又
//            s = "MM";     //没改成功
//        }


        //遍历
        for (String s : arr1) {
            System.out.println(s);
        }
```

### List接口及特有方法

> [<font color="violet">List特有方法.xmind</font>](./相关资料/Xmind/相关API/集合/List特有方法.xmind)

![1692035470706](Java.assets/1692035470706.png)

> List接口中存储数据的特点：用于存储有序的、可以重复的数据。---> 使用List替代数组，"动态"数组
>
> List及其实现类特点
> java.util.Collection:存储一个一个的数据
>  |-----子接口：List:存储有序的、可重复的数据 ("动态"数组)
>         |---- `ArrayList:List`的主要实现类；线程不安全的、效率高；==底层使用Object[]数组存储==
>                         在添加数据、查找数据时，效率较高；在插入、删除数据时，效率较低
>         |---- `LinkedList`:==底层使用双向链表的方式进行存储==；在对集合中的数据进行频繁的删除、插入操作时，建议使用此类
>                         在插入、删除数据时，效率较高；在添加数据、查找数据时，效率较低；
>         |---- `Vector:List`的古老实现类；线程安全的、效率低；底层使用Object[]数组存储

> 注意：在JavaSE中List名称的类型有两个，一个是java.util.List集合接口，一个是java.awt.List图形界面的组件，别导错包了。

> List除了从Collection集合继承的方法外，List 集合里添加了一些==根据索引==来操作集合元素的方法。

#### 插入元素

* `void add(int index, E element)`;    在index位置插入element元素
* `boolean addAll(int index, Collection<? extends E> c)`;    从index位置开始将c中的所有元素添加进来

```java
        List list = new ArrayList<>();

        //add(Object obj)
        list.add("AA");
        list.add("BB");
        list.add(123);  //自动装箱
        list.add(new Person("Tom", 12));
        System.out.println(list);

        //add(int index, Object ele)
        list.add(2, "C");
        System.out.println(list);

        //addAll(int index, Collection eles)
        List list1 = Arrays.asList(1, 2, 3);
        list.addAll(1, list1);

//        list.add(1,list1); //将list1整体作为一个元素，插入到索引1的位置
        System.out.println(list);
```



#### 获取元素

* `E get(int index)`;    获取指定index位置的元素
* `List<E> subList(int fromIndex, int toIndex);`   返回从fromIndex到toIndex位置的子集合

#### 获取元素索引

* `int indexOf(Object o)`;   返回o在集合中首次出现的位置
* `int lastIndexOf(Object o);`    返回o在当前集合中末次出现的位置

#### 删除和替换元素

* `E remove(int index);`   移除指定index位置的元素，并返回此元素
* `E set(int index, E element);` 设置指定index位置的元素为element

```java
        List list = new ArrayList();

        //add(Object obj)
        list.add("AA");
        list.add("BB");
        list.add(123);  //自动装箱
        list.add(2);    //自动装箱
        list.add(new Person("Tom", 12));

        //删除索引2的元素
        list.remove(2);     //删除的是123
        System.out.println(list);
        System.out.println(list.get(2));

        //删除元素2
        list.remove(Integer.valueOf(2));
        System.out.println(list);
```



#### LinkedList特有方法

- `void addFirst(Object obj)`
- `void addLast(Object obj)`
- `Object getFirst()`
- `Object getLast()`
- `Object removeFirst()`
- `Object removeLast()`

#### Vector特有方法

> Vector很少用，即使有安全访问的需求，也不用它

- `void addElement(Object obj)`
- `void insertElementAt(Object obj,int index)`
- `void setElementAt(Object obj,int index)`
- `void removeElement(Object obj)`
- `void removeAllElements()`

### Set接口

> 注：Set接口里只有一部分不常用的特有方法，此处不列举

> Set及其实现类特点
> java.util.Collection:存储一个一个的数据
>  |-----子接口：`Set:`存储无序的、不可重复的数据(高中学习的集合)
>         |---- `HashSet`：主要实现类；底层使用的是`HashMap`，即使用==数组+单向链表+红黑树==结构进行存储。（jdk8中）
>              |---- `LinkedHashSet`：是HashSet的子类；在现有的==数组+单向链表+红黑树==结构的基础上，又添加了
>                                   一==组双向链表==，用于记录添加元素的先后顺序。即：我们可以按照添加元素的顺序
>                                   实现遍历。便于频繁的查询操作。
>         |---- `TreeSet`：底层使用==红黑树==存储。可以按照添加的元素的指定的属性的==大小顺序==进行遍历。

> * 较List、Map来说，Set使用的频率比较少。
> * 用来过滤重复数据

> 相关解释：
>
> 无序性：
> 	与添加的元素的位置有关，不像ArrayList一样是依次紧密排列的。这里是==根据添加的元素的哈希值==，计算的其在数组中的存储位置。此位置不是依次排列的，表现为无序性。
>
> 不可重复性：
> 	添加到Set中的元素是不能相同的。
> 	比较的标准
> 		对于`HashSet`/`LinkedHashSet`：需要先判断hashCode()，再判断equals()
> 		对于`TreeSet`：需要判断自然排序(Comparable)或定制排序(Comparator)

> 向TreeSet中添加的元素的要求：
> * 要求添加到TreeSet中的元素==必须是同一个类型的对象==，否则会报ClassCastException.
> * 添加的元素需要考虑排序：① 自然排序 ② 定制排序

#### 案例：无法添加重复元素

```java
        Set set = new HashSet();

        set.add("AA");
        set.add(123);
        set.add("BB");
        set.add(new Person("Tom",12));
        set.add(new Person("Tom",12));  //无法添加进去相同的元素

        Iterator iterator = set.iterator();
        while (iterator.hasNext())
            System.out.println(iterator.next());
```

#### 案例：TreeSet无法添加不同类型元素

```java
        TreeSet treeSet = new TreeSet();

        treeSet.add("C");
        treeSet.add("A");
        treeSet.add("D");
        treeSet.add("M");
        treeSet.add("G");
        treeSet.add("S");

        treeSet.add(123);   //会报ClassCastException异常

        Iterator iterator = treeSet.iterator();
        while (iterator.hasNext())
            System.out.println(iterator.next());
```

#### 案例：TreeSet设置排序规则

##### 自然排序

```java
        TreeSet treeSet = new TreeSet();


        User u1 = new User("Tom",23);
        User u2 = new User("Jerry",43);
        User u3 = new User("Rose",13);
        User u4 = new User("Jack",23);
        User u5 = new User("Tony",33);

        treeSet.add(u1);
        treeSet.add(u2);
        treeSet.add(u3);
        treeSet.add(u4);
        treeSet.add(u5);

        Iterator iterator = treeSet.iterator();
        while(iterator.hasNext()){
            System.out.println(iterator.next());
```

User.java

```java
public class User implements Comparable{
    private String name;
    private int age;

    public User() {
    }

    public User(String name, int age) {
        this.name = name;
        this.age = age;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    @Override
    public String toString() {
        return "User{" +
                "name='" + name + '\'' +
                ", age=" + age +
                '}';
    }

//    @Override
//    public boolean equals(Object o) {
//        System.out.println("User equals()....");
//        if (this == o) return true;
//        if (o == null || getClass() != o.getClass()) return false;
//        User user = (User) o;
//        return age == user.age && Objects.equals(name, user.name);
//    }
//
//    @Override
//    public int hashCode() {
//        return Objects.hash(name, age);
//    }

    /*
    * 比如：按照年龄从小到大排序
    * */
//    @Override
//    public int compareTo(Object o) {
//        if(this == o){
//            return 0;
//        }
//
//        if(o instanceof User){
//            User u = (User)o;
//            return this.age - u.age;
//        }
//
//        throw new RuntimeException("类型不匹配");
//    }

    /*
    * 比如：先比较年龄从小到大排列，如果年龄相同，则继续比较姓名，从大到小
    * */
    @Override
    public int compareTo(Object o) {
        if(this == o){
            return 0;
        }

        if(o instanceof User){
            User u = (User)o;
            int value = this.age - u.age;
            if(value != 0){
                return value;
            }
            return -this.name.compareTo(u.name);
        }

        throw new RuntimeException("类型不匹配");
    }
}
```

##### 定制排序

```java
        /*
         * 按照姓名从小到大排列，如果姓名相同，继续比较age，按照从大到小排列
         * */
        Comparator comparator = new Comparator() {
            /*
             * 按照姓名从小到大排列，如果姓名相同，继续比较age，按照从大到小排列
             * */
            @Override
            public int compare(Object o1, Object o2) {
                if (o1 instanceof User && o2 instanceof User){
                    User u1 = (User) o1;
                    User u2 = (User) o2;

                    int value = u1.getName().compareTo(u2.getName());
                    if (value != 0)
                        return value;

                    return -(u1.getAge() - u2.getAge());
                }

                throw new RuntimeException("类型不匹配");
            }
        };

        TreeSet treeSet = new TreeSet(comparator);

        User u1 = new User("Tom",23);
        User u2 = new User("Jerry",43);
        User u3 = new User("Rose",13);
        User u4 = new User("Jack",23);
        User u6 = new User("Jack",25);
        User u5 = new User("Tony",33);

        treeSet.add(u1);
        treeSet.add(u2);
        treeSet.add(u3);
        treeSet.add(u4);
        treeSet.add(u5);
        treeSet.add(u6);

        Iterator iterator = treeSet.iterator();
        while (iterator.hasNext())
            System.out.println(iterator.next());

```

#### 案例：List与Set类型之间转换

> list与set类型之间的转换，借用Set实现去重的效果

```java
public static void main(String[] args) {
        ArrayList list = new ArrayList();
        list.add(34);
        list.add(34);
        list.add(34);
        list.add(22);
        list.add(22);
        list.add(22);
        list.add(45);
        list.add(45);
        list.add(45);

        List newList = duplicatedList(list);
        System.out.println(newList);
    }

    public static List duplicatedList(List list){
        //方式一：也基本是方式二底层使用的方式
        /*HashSet set = new HashSet();
        for (Object o : list) {
            set.add(o);
        }

        ArrayList list1 = new ArrayList();
        for (Object o : set) {
            list1.add(o);
        }
        return list1;*/

        //方式二：
        HashSet set1 = new HashSet(list);
        ArrayList list1 = new ArrayList(set1);
        return list1;
    }
```

#### 案例：尽量不要更改set中已存元素属性值

```java
        HashSet set = new HashSet();
        Person p1 = new Person(1001,"AA");
        Person p2 = new Person(1002,"BB");

        set.add(p1);
        set.add(p2);
        System.out.println(set);

        p1.name = "CC";
        set.remove(p1); //删不了，此时按照修改属性后的hash值找位置
        System.out.println(set);

        set.add(new Person(1001,"CC")); //可以添加进去，虽然存在属性值一样的元素，但是对应的hash位置上并不存在元素。
        System.out.println(set);

        //Person(1001,"CC")
        set.add(new Person(1001,"AA"));//可以添加进去，先按此元素属性hash找位置，虽然位置上有元素，但是属性不同
        System.out.println(set);
```

### Map接口

> [<font color="violet">Map.xmind</font>](./相关资料/Xmind/相关API/集合/Map.xmind)

![1692035641570](Java.assets/1692035641570.png)

> Map及其实现类对比
>
>  java.util.Map:存储一对一对的数据(key-value键值对，(x1,y1)、(x2,y2) --> y=f(x),类似于高中的函数)
> 	 |---- HashMap:主要实现类;==线程不安全的==，效率高;==可以添加null的key和value值==；==底层使用数组+单向链表+红黑树==结构存储（jdk8）
>  	    |---- LinkedHashMap:是HashMap的子类；在HashMap使用的数据结构的基础上，增加了一对双向链表，用于记录添加的元素的先后顺序，
>                          进而我们在遍历元素时，就可以按照添加的顺序显示。
>                          开发中，对于==频繁的遍历操作==，建议使用此类。
> 	 |---- TreeMap:底层使用==红黑树==存储;可以按照添加的key-value中的key元素的==指定的属性的大小顺序==进行遍历。
> 						需要考虑使用①自然排序 ②定制排序。
> 	 |---- Hashtable:古老实现类;==线程安全==的，效率低;==不可以添加null的key或value值==;底层使用==数组+单向链表结构存储==（jdk8）
>     	 |---- Properties:其==key和value都是String类型==。常用来处理属性文件。

> HashMap中到底存储着什么？
>
> * JDK7：HashMap内部声明了Entry，实现了Map中的Entry接口。（key，value作为Entry的两个属性出现）
> * JDK8：HashMap内部声明了Node，实现了Map中的Entry接口。（key，value作为Node的两个属性出现）



#### Map中key-value的特点

**HashMap中元素的特点**

<img src="Java.assets/1692000596524.png" alt="image-20220409001213720" style="zoom:67%;" />

<img src="Java.assets/1692000737001.png" alt="image-20220514190412763" style="zoom:67%;" />

* HashMap中的所有的==key彼此之间是不可重复的、无序的==。所有的key就构成一个Set集合。--->key所在的类要重写hashCode()和equals()
* HashMap中的所有的value彼此之间是可重复的、无序的。所有的value就构成一个Collection集合。--->value所在的类要重写equals()
* HashMap中的一个key-value,就构成了一个entry。
* HashMap中的所有的entry彼此之间是不可重复的、无序的。所有的entry就构成了一个Set集合。

#### Map接口的常用方法

* **添加、修改操作**
  * `V put(K key, V value);`    将指定key-value添加到(或修改)当前map对象中
  * `void putAll(Map<? extends K, ? extends V> m);`    将m中的所有key-value对存放到当前map中
* **删除操作**
  * `V remove(Object key);`    移除指定key的key-value对，并返回对应的value
  * `void clear();`   清空当前map中的所有数据
* **元素查询操作**
  * `V get(Object key);`    获取指定key对应的value
  * `boolean containsKey(Object key)`   是否包含指定的key
  * `boolean containsValue(Object value);`    是否包含指定的value
  * `int size();`    返回map中key-value对的个数
  * `boolean isEmpty();`    判断当前map是否为空
  * `boolean equals(Object o);`    判断当前map和参数对象o是否相等
* **元素视图操作**
  * `Set<K> keySet();`   返回所有key构成的Set集合
  * `Collection<V> values();`    返回所有value构成的Collection集合
  * `Set<Map.Entry<K, V>> entrySet();`    返回所有key-value对构成的Set集合

#### 案例

##### 健壮性(null值的区别)

**HashMap**

```java
        //强健壮性
        Map map = new HashMap();

	//不会报错，key-value可以为null值
        map.put(null,null);
        map.put("Tom", 23);
        map.put("CC", new Date());
        map.put(34, "AA");

        System.out.println(map);
```

**Hashtable**

```java
        //老版，健壮性不够强
        Map map = new Hashtable();

        //会报错，hashtable中的key-value
        map.put(null, 123);
        map.put("AA", null);

        System.out.println(map);
```

##### 常用方法

```java
        HashMap map = new HashMap();

        //添加：put(Object key,Object value)
        map.put("AA", 56);
        map.put(67, "Tom");
        map.put("BB", 78);
        map.put(new Person("Jerry", 12), 56);

        System.out.println(map);
        //size()
        System.out.println();

        //Object remove(Object key)
        Object value = map.remove("AA");
        System.out.println(value);
        System.out.println(map);

        //修改：put(Object key,Object value)
        Object oldValue = map.put("BB", 99);
        System.out.println(oldValue);   //78
        System.out.println(map);

        //get(Object key)
        Object value1 = map.get(67);
        System.out.println(value1);
```

##### 遍历操作

**遍历value或key集**

```java
 HashMap map = new HashMap();

        map.put("AA", 56);
        map.put(67, "Tom");
        map.put("BB", 78);
        map.put(new Person("Jerry", 12), 56);

        //遍历key集：Set keySet()
        Set keySet = map.keySet();
        //使用迭代器
        Iterator iterator = keySet.iterator();
        while (iterator.hasNext()){
            Object key = iterator.next();
            System.out.println(key);
        }

        //遍历value集：Collection values()
        //方式1：推荐
        /*Collection values = map.values();
        //使用增强for
        for (Object value : values) {
            System.out.println(value);
        }
*/
        //方式2：
        Set keySet1 = map.keySet();
        for (Object key : keySet1) {
            Object value = map.get(key);
            System.out.println(value);
        }
```

**遍历key-value（即entry）**

```java
        HashMap map = new HashMap();

        map.put("AA", 56);
        map.put(67, "Tom");
        map.put("BB", 78);
        map.put(new Person("Jerry", 12), 56);

        //方式1：遍历entry集：Set entrySet()
        Set entrySet = map.entrySet();
        Iterator iterator = entrySet.iterator();
        while (iterator.hasNext()){
            //方法1
//            System.out.println(iterator.next());
            //方法2
            Map.Entry entry = (Map.Entry)iterator.next();
            System.out.println(entry.getKey() + "---->" + entry.getValue());
        }

        //方式2：遍历entry集：keySet() 、get(key)
        Set keySet = map.keySet();
        for (Object key : keySet) {
            System.out.println(key + "------->" + map.get(key));
        }
```

#### TreeMap相关案例

##### TreeMap中key类型必须相同

```java
        TreeMap treeMap = new TreeMap();

        treeMap.put("CC", 89);
        treeMap.put("BB", 78);
        treeMap.put("JJ", new Date());
        treeMap.put("WW", 78);

        treeMap.put(67, 78); //报错。因为key的类型（Integer)与之前的key的类型（String）不一致

        Set entrySet = treeMap.entrySet();
        for (Object entry : entrySet) {
            System.out.println(entry);
        }
```

##### TreeMap的比较方式

> 注：TreeMap在判断元素是否相同时不会用到`hashCode()`与`equals()`，只会用到Comparable或Comparator

```java
        TreeMap treeMap = new TreeMap();

        User u1 = new User("Tom",23);
        User u2 = new User("Jerry",43);
        User u3 = new User("Rose",13);
        User u4 = new User("Jack",23);
        User u5 = new User("Tony",33);

        treeMap.put(u1, 78);
        treeMap.put(u2, 76);
        treeMap.put(u3, 88);
        treeMap.put(u4, 45);
        treeMap.put(u5, 99);

        Set entrySet = treeMap.entrySet();
        for (Object entry : entrySet) {
            System.out.println(entry);
        }

        System.out.println(treeMap.containsKey(new User("Maria", 3)));
    }
```

User类

```java
public class User implements Comparable{
    private String name;
    private int age;

    public User() {
    }

    public User(String name, int age) {
        this.name = name;
        this.age = age;
    }

//............省略toString与get、set方法

//    @Override
//    public boolean equals(Object o) {
//        System.out.println("User equals()....");
//        if (this == o) return true;
//        if (o == null || getClass() != o.getClass()) return false;
//        User user = (User) o;
//        return age == user.age && Objects.equals(name, user.name);
//    }
//
//    @Override
//    public int hashCode() {
//        return Objects.hash(name, age);
//    }

    /*
    * 比如：按照年龄从小到大排序
    * */
//    @Override
//    public int compareTo(Object o) {
//        if(this == o){
//            return 0;
//        }
//
//        if(o instanceof User){
//            User u = (User)o;
//            return this.age - u.age;
//        }
//
//        throw new RuntimeException("类型不匹配");
//    }

    /*
    * 比如：先比较年龄从小到大排列，如果年龄相同，则继续比较姓名，从大到小
    * */
    @Override
    public int compareTo(Object o) {
        if(this == o){
            return 0;
        }

        if(o instanceof User){
            User u = (User)o;
            int value = this.age - u.age;
            if(value != 0){
                return value;
            }
            return -this.name.compareTo(u.name);
        }

        throw new RuntimeException("类型不匹配");
    }
}
```

#### Properties案例

> Properties:是Hashtable的子类，其key和value都是String类型的，常用来处理属性文件。
>
> 注：File(xxx)中xx直接写文件名，
> 	则在test()测试方法中，默认路径在该测试方法所在module中
> 	在main方法中，默认路径在在工程的根目录里

```java
    @Test
    public void test1() throws IOException {
        File file = new File("info.properties");
        System.out.println(file.getAbsolutePath());	//默认路径在模块目录里
        FileInputStream fileInputStream = new FileInputStream(file);

        Properties properties = new Properties();
        properties.load(fileInputStream);   //加载流中的文件中的数据

        //读取数据
        String name = properties.getProperty("name");
        String password = properties.getProperty("password");

        System.out.println(name + ":" + password);

        fileInputStream.close();
    }

    public static void main(String[] args) {
        File file = new File("info.properties");
        System.out.println(file.getAbsolutePath());	//默认路径在工程根目录下
    }
```

info.properties

```properties
name=zfp
password=123456
```

### Collections工具类

> 参考操作数组的工具类：Arrays，Collections 是一个操作 Set、List 和 Map 等集合的工具类。
>
> [<font color="violet">Collections.xmind</font>](./相关资料/Xmind/相关API/集合/Collections.xmind)
>
> Collections 中提供了一系列静态的方法对集合元素进行排序、查询和修改等操作，还提供了对集合对象设置不可变、对集合对象实现同步控制等方法（均为static方法）：

#### 常用方法

**排序操作：**

- reverse(List)：反转 List 中元素的顺序
- shuffle(List)：对 List 集合元素进行随机排序
- sort(List)：根据元素的自然顺序对指定 List 集合元素按升序排序
- sort(List，Comparator)：根据指定的 Comparator 产生的顺序对 List 集合元素进行排序
- swap(List，int， int)：将指定 list 集合中的 i 处元素和 j 处元素进行交换

**查找**

- Object max(Collection)：根据元素的自然顺序，返回给定集合中的最大元素
- Object max(Collection，Comparator)：根据 Comparator 指定的顺序，返回给定集合中的最大元素
- Object min(Collection)：根据元素的自然顺序，返回给定集合中的最小元素
- Object min(Collection，Comparator)：根据 Comparator 指定的顺序，返回给定集合中的最小元素
- int binarySearch(List list,T key)在List集合中查找某个元素的下标，但是List的元素必须是T或T的子类对象，而且必须是可比较大小的，即支持自然排序的。而且集合也事先必须是有序的，否则结果不确定。
- int binarySearch(List list,T key,Comparator c)在List集合中查找某个元素的下标，但是List的元素必须是T或T的子类对象，而且集合也事先必须是按照c比较器规则进行排序过的，否则结果不确定。
- int frequency(Collection c，Object o)：返回指定集合中指定元素的出现次数

**复制、替换**

- void copy(List dest,List src)：将src中的内容复制到dest中
- boolean replaceAll(List list，Object oldVal，Object newVal)：使用新值替换 List 对象的所有旧值
- 提供了多个unmodifiableXxx()方法，该方法返回指定 Xxx的不可修改的视图。

**添加**

- boolean addAll(Collection  c,T... elements)将所有指定元素添加到指定 collection 中。

**同步**

- Collections 类中提供了多个 synchronizedXxx() 方法，该方法可使将指定集合包装成线程同步的集合，从而可以解决多线程并发访问集合时的线程安全问题：

![1692113923971](Java.assets/1692113923971.png)

#### 特殊案例

##### copy()方法

> * `copy(dest, sc)`中要求dest和sc真实元素的存储个数相同！！！
>
>   否则会报异常！！

```java
        List sc = Arrays.asList(45, 43, 65, 6, 43, 2, 32, 45, 56, 34, 23);
        //void copy(List dest,List src)：将src中的内容复制到dest中
        //错误的写法：
        /*List dest = new ArrayList();
        Collections.copy(dest, sc);*/

        List dest = Arrays.asList(new Object[sc.size()]);
        Collections.copy(dest, sc);

        System.out.println(dest);
```

##### unmodifiableXxx()视图方法

> Collections工具类，提供了多个unmodifiableXxx()方法，该方法返回指定 Xxx的不可修改的视图。

```java
        List list = new ArrayList();
        //正常list可以添加数据
        list.add(34);
        list.add(12);
        list.add(45);

        List list1 = Collections.unmodifiableList(list);
        //此时list1只能读而不能写
//        list1.add("wo jiu yao jia");    //报错UnsupportedOperationException
        System.out.println(list1.get(0));
```

##### synchronizedXxx()方法

> 大多数集合类，如ArrayList等不支持线程安全，即使有少部线程安全的类如：Hashtable、Vector，这类API较古老。
>
> 我们一般的方式是使用synchronizedXxx()返回线程安全的同类型集合

```java
        List list = new ArrayList();
        //返回的list1是线程安全的
        List list1 = Collections.synchronizedList(list);
        list1.add(123);

        HashMap map = new HashMap();
        //返回的map1是线程安全的
        Map map1 = Collections.synchronizedMap(map);
        map1.put("zfp", 123456);
```

## 泛型

> 什么是泛型？（jdk5.0引入泛型）
> 	所谓泛型，就是允许在定义类、接口时通过一个`标识`表示类中某个`属性的类型`或者是某个方法的`返回值或参数的类型`。这个类型参数将在使用时（例如，继承或实现这个接口、创建对象或调用方法时）确定（即传入实际的类型参数，也称为类型实参）
>
> 在集合中使用泛型之前可能存在的问题
> 	问题1：类型不安全。因为add()的参数是Object类型，意味着任何类型的对象都可以添加成功
> 	问题2：需要使用强转操作，繁琐。还有可能导致ClassCastException异常
>
> 使用说明：
> 	如果没有使用泛型，则认为操作的是Object类型的数据。如果使用了泛型，则需要指明泛型的具体类型。
> 	一旦指明了泛型的具体类型，则在集合的相关的方法中，凡是使用类的泛型的位置，都替换为具体的泛型类型。

### 使用泛型的案例

#### 类型安全、避免强转

```java
        ArrayList<Integer> arrayList = new ArrayList<>();

        arrayList.add(87);
        arrayList.add(99);
        arrayList.add(67);
        arrayList.add(23);
//        arrayList.add("string");    //编译报错
        Iterator<Integer> iterator = arrayList.iterator();
        while (iterator.hasNext()){
            ////因为上述泛型规定添加的都是Integer类型，避免了强转操作
            Integer i = iterator.next();
            System.out.println(i);
        }
```

#### 泛型类实例化的写法

```java
//        HashMap<String, Integer> hashMap = new HashMap<String, Integer>();
        //jdk7.0新特性
        HashMap<String, Integer> hashMap = new HashMap<>();

        hashMap.put("Jack", 18);
        hashMap.put("Rookie", 25);
        hashMap.put("ning", 28);

//        Set<Map.Entry<String, Integer>> entrySet = hashMap.entrySet();
//        Iterator<Map.Entry<String, Integer>> iterator = entrySet.iterator();

        //jdk10 新特性，自动类型推断
        var entrySet = hashMap.entrySet();
        var iterator = entrySet.iterator();

        while (iterator.hasNext()){
            Map.Entry<String, Integer> entry = iterator.next();
            String key = entry.getKey();
            Integer value = entry.getValue();
            System.out.println(key + "---------->" + value);
        }
```

#### 在比较器中的使用

**测试类**

```java
//需求1：使Employee 实现 Comparable 接口，并按 name 排序
    @Test
    public void test1(){
        TreeSet<Employee> treeSet = new TreeSet<>();

        Employee rookie = new Employee("rookie", 25, new MyDate(1998, 5, 9));
        Employee leijun = new Employee("leijun", 50, new MyDate(1969, 12, 16));
        Employee theshy = new Employee("theshy", 18, new MyDate(1998, 9, 16));
        Employee jack = new Employee("jack", 18, new MyDate(2000, 1, 1));
        Employee mark = new Employee("mark", 24, new MyDate(1998, 3, 3));

        treeSet.add(rookie);
        treeSet.add(leijun);
        treeSet.add(theshy);
        treeSet.add(jack);
        treeSet.add(mark);

        Iterator<Employee> iterator = treeSet.iterator();
        while (iterator.hasNext())
            System.out.println(iterator.next());

    }

//需求2：创建 TreeSet 时传入 Comparator对象，按生日日期的先后排序。
    @Test
    public void test2(){
        Comparator<Employee> comparator = new Comparator<>() {
            @Override
            public int compare(Employee o1, Employee o2) {
                return o1.getBirthday().compareTo(o2.getBirthday());
            }
        };

        TreeSet<Employee> employees = new TreeSet<>(comparator);

        Employee rookie = new Employee("rookie", 25, new MyDate(1998, 5, 9));
        Employee leijun = new Employee("leijun", 50, new MyDate(1969, 12, 16));
        Employee theshy = new Employee("theshy", 18, new MyDate(1998, 9, 16));
        Employee jack = new Employee("jack", 18, new MyDate(2000, 1, 1));
        Employee mark = new Employee("mark", 24, new MyDate(1998, 3, 3));

        employees.add(rookie);
        employees.add(leijun);
        employees.add(theshy);
        employees.add(jack);
        employees.add(mark);

        Iterator<Employee> iterator = employees.iterator();
        while (iterator.hasNext())
            System.out.println(iterator.next());
    }
```

**MyDate类**

```java
public class MyDate implements Comparable<MyDate>{
    private Integer year;
    private Integer month;
    private Integer day;

//此处省略了构造器、get、set方法

    @Override
    public String toString() {
        return "MyDate{" +
                "year=" + year +
                ", month=" + month +
                ", day=" + day +
                '}';
    }

    @Override
    public int compareTo(MyDate o) {
        int yearValue = this.year - o.getYear();
        if (yearValue != 0)
            return yearValue;

        int monthValue = this.month - o.getMonth();
        if (monthValue != 0)
            return monthValue;

        return this.day - o.getDay();
    }
}
```

**Employee类**

```java
public class Employee implements Comparable<Employee>{
    private String name;
    private Integer age;
    private MyDate birthday;

//此处省略了构造器、get、set方法

    @Override
    public String toString() {
        return "Employee{" +
                "name='" + name + '\'' +
                ", age=" + age +
                ", birthday=[" + birthday +
                "]}";
    }

    @Override
    public int compareTo(Employee o) {
        return this.name.compareTo(o.name);
    }
}
```

### 自定义泛型结构

#### 声明

> 注：泛型方法可以是静态方法、也可以是成员方法

**泛型类/泛型接口**

```java
【修饰符】 class 类名<类型变量列表> 【extends 父类】 【implements 接口们】{
    
}
【修饰符】 interface 接口名<类型变量列表> 【implements 接口们】{
    
}

//例如：
public class ArrayList<E>    
public interface Map<K,V>{
    ....
}    

public class Test <T extends Father>{
}
```

**泛型方法**

```java
[修饰符] <类型变量列表> 返回值类型 方法名([形参列表])[throws 异常列表]{
    //...
}

public  <T> List<T> getT(T... a){
    ....
}

//例如：java.util.Arrays类中的
public static <T> List<T> asList(T... a){
    ....
}
```

#### 使用说明

> ① 我们在声明完自定义泛型类以后，可以在类的内部（比如：属性、方法、构造器中）使用类的泛型。
> ② 我们在创建自定义泛型类的对象时，可以指明泛型参数类型。一旦指明，内部凡是使用类的泛型参数的位置，都具体化为指定的类的泛型类型。
> ③ 如果在创建自定义泛型类的对象时，没有指明泛型参数类型，那么泛型将被擦除，泛型对应的类型均==按照Object处理，但不等价于Object==。
> 		经验：泛型要使用一路都用。要不用，一路都不要用。
> ④ 泛型的指定中必须使用引用数据类型。==不能使用基本数据类型==，此时只能使用包装类替换。
> ⑤
> 除创建泛型类对象外，子类继承泛型类时、实现类实现泛型接口时，也可以确定泛型结构中的泛型参数。比如：SubOrder2
> 如果我们在给泛型类提供子类时，子类也不确定泛型的类型，则可以继续使用泛型参数。比如：SubOrder3
> 我们还可以在现有的父类的泛型参数的基础上，新增泛型参数。比如：比如：SubOrder4,SubOrder5

> 注：
>
> ① 泛型类可能有多个参数，此时应将多个参数一起放在尖括号内。比如：`<E1,E2,E3>`
> ② JDK7.0 开始，泛型的简化操作：`ArrayList<Fruit> flist = new ArrayList<>();`
> ③ 如果泛型结构是一个接口或抽象类，则不可创建泛型类的对象。
> ④ ==不能使用`new E[]`。但是可以：`E[] elements = (E[])new Object[capacity];`==
> 参考：ArrayList源码中声明：Object[] elementData，而非泛型参数类型数组。
> ⑤ 在类/接口上声明的泛型，在本类或本接口中即代表某种类型，但==不可以在静态方法中使用类的泛型==。
> ⑥ ==异常类不能是带泛型的==。

> 关于泛型方法：
>
> ① 声明泛型方法时，一定要添加泛型参数`<T>`
> ② 泛型参数在方法调用时，指明其具体的类型
> ③ 泛型方法可以根据需要声明为static的
> ④ 泛型方法所属的类是否是一个泛型类，都可以。

### 泛型特性的案例

#### 泛型一旦确定不能改

> 泛型一旦确定，不能更改

**测试方法**

```java
        Person p1 = new Person();

//        Person p2 = new Person<>();   //只有泛型类才能这么写

        ArrayList<String> list = new ArrayList<>();
        list.add("AA");
//        list.add(123);    //泛型参数一旦确定，就不会变了

        ArrayList list1 = new ArrayList();  //向下兼容。jdk5.0之前集合是没有声明为泛型的。
        list1.add(123);
        list1.add("AA");
```

**Person类**

```java
public class Person {}
```

#### 泛型与静态的关系

> 泛型类中的泛型不可以在静态中出现。
>
> 但泛型方法可以是静态的！！！！

**测试方法**

```java
        //实例化时，就可以指明类的泛型参数的类型
        Order order = new Order();  //Order<Object> order3 = new Order<>();两者不同
        Object t = order.getT();

        //泛型参数在指明时，是不可以使用基本数据类型的！但是可以使用包装类替代基本数据类型。
//        Order<int> order1 = new Order<int>();
        //在实例化时，可以指明类的泛型参数的具体类型！一旦指明了泛型的类型，则在泛型类中凡是使用泛型
        //参数的位置，都替换为指定的类型。

        Order<Integer> order2 = new Order<>();
        Integer t1 = order2.getT();

        Order<String> order3 = new Order<>();
        order3.setT("AA");
```

**Order类**

```java
public class Order <T>{
    //声明了类的泛型参数以后，就可以在类的内部使用此泛型参数。
    T t;
    int orderId;

    //注：泛型类的泛型不能是静态的，即不能出现在静态属性或静态方法中
//    static T t1;


    public Order() {
    }

    public Order(T t, int orderId) {
        this.t = t;
        this.orderId = orderId;
    }

    //............此处省略了get、set、toString方法

    //不能再静态方法中使用类的泛型
    /*public static void method(){
        System.out.println("t:" + t);
    }*/

    //自定义泛型方法
    public <E> E method(E e){ return null;}
    public static  <E> E method1(E e){ return null;}

    //自定义泛型方法，将E[]数组元素添加到对应类型的ArrayList中，并返回。
    public <E> ArrayList<E> copyFromArrayToList(E[] arr){
        ArrayList<E> list = new ArrayList<>();
        for (E e : arr) {
            list.add(e);
        }
        return list;
    }
}
```

#### 泛型与继承的关系

**Order类**

```java
public class Order <T>{
    //声明了类的泛型参数以后，就可以在类的内部使用此泛型参数。
    T t;
    int orderId;

    //注：泛型类的泛型不能是静态的，即不能出现在静态属性或静态方法中
//    static T t1;


    public Order() {
    }

    public Order(T t, int orderId) {
        this.t = t;
        this.orderId = orderId;
    }

    //............此处省略了get、set、toString方法

    //不能再静态方法中使用类的泛型
    /*public static void method(){
        System.out.println("t:" + t);
    }*/

    //自定义泛型方法
    public <E> E method(E e){ return null;}
    public static  <E> E method1(E e){ return null;}

    //自定义泛型方法，将E[]数组元素添加到对应类型的ArrayList中，并返回。
    public <E> ArrayList<E> copyFromArrayToList(E[] arr){
        ArrayList<E> list = new ArrayList<>();
        for (E e : arr) {
            list.add(e);
        }
        return list;
    }
}
```

##### 继承时未写出父类泛型

**SubOrder1类**

```java
//继承时未写出泛型
public class SubOrder1 extends Order{
    //此时SubOrder1并不是泛型类
}
```

**测试方法**

```java
        //实例化SubOrder1
        SubOrder1 sub1 = new SubOrder1();
        Object t = sub1.getT();
//        SubOrder1<Integer> sub2 = new SubOrder1<>();    //因为SubOrder1不是泛型类，此处编译错误
```

##### 继承父类时，只指明父类的泛型的类型

**SubOrder1类**

```java
//继承父类时，只指明父类的泛型的类型
public class SubOrder2 extends Order<Integer>{
    //此时SubOrder2依然不是泛型类
}
```

**测试方法**

```java
        //SubOrder2继承父类时，只指明父类的泛型的类型
        SubOrder2 sub1 = new SubOrder2();
        Integer t = sub1.getT();
//        SubOrder2<String> sub = new SubOrder2<>();    //因为SubOrder2不是泛型类，此处编译错误
```

##### 写出父类泛型，但并未指定具体类型

**SubOrder3类**

> 此时，子类与父类的泛型相同，也可以说是延续父类泛型

```java
//写出父类泛型，但并未指定具体类型
public class SubOrder3<T> extends Order<T>{
    //此时SubOrder3是泛型类

    public void show(T t){
        System.out.println(t);
    }
}

//该写法错误！！！！
/*public class SubOrder3 extends Order<T>{
}*/
```

**测试方法**

```java
        //写出父类泛型，但并未指定具体类型
        SubOrder3<String> sub3 = new SubOrder3<>();
        String t1 = sub3.getT();
        sub3.show("AA");
```

##### 指明父类的泛型类型，自己还有新的泛型

**SubOrder4类**

```java
//指明父类的泛型类型，自己还有新的泛型
public class SubOrder4<E> extends Order<Integer>{
    E e;

    public SubOrder4() {
    }

    public SubOrder4(E e) {
        this.e = e;
    }

    public SubOrder4(Integer integer, int orderId, E e){
        super(integer, orderId);
        this.e = e;
    }

    public E getE() {
        return e;
    }

    public void setE(E e) {
        this.e = e;
    }
}
```

**测试方法**

```java
        SubOrder4<String> sub4 = new SubOrder4<>();
        Integer t2 = sub4.getT();
        String e = sub4.getE();
```

##### 写出父类泛型但不指明具体类型，自己还添加新的泛型

**SubOrder5类**

```java
//写出父类泛型但不指明具体类型，自己还添加新的泛型
public class SubOrder5<T,E> extends Order<T>{
    E e;

    public SubOrder5() {
    }

    public SubOrder5(T t, int orderId, E e) {
        super(t, orderId);
        this.e = e;
    }

    public E getE() {
        return e;
    }

    public void setE(E e) {
        this.e = e;
    }
}
```

**测试方法**

```java
        //写出父类泛型但不指明具体类型，自己还添加新的泛型
        SubOrder5<String, Integer> sub5 = new SubOrder5<>();
        String t3 = sub5.getT();
        Integer e1 = sub5.getE();
```

#### 泛型方法案例

**Order类**

```java
public class Order <T>{
    //声明了类的泛型参数以后，就可以在类的内部使用此泛型参数。
    T t;
    int orderId;

    //注：泛型类的泛型不能是静态的，即不能出现在静态属性或静态方法中
//    static T t1;


    public Order() {
    }

    public Order(T t, int orderId) {
        this.t = t;
        this.orderId = orderId;
    }

    //............此处省略了get、set、toString方法

    //不能再静态方法中使用类的泛型
    /*public static void method(){
        System.out.println("t:" + t);
    }*/

    //自定义泛型方法
    public <E> E method(E e){ return null;}
    public static  <E> E method1(E e){ return null;}

    //自定义泛型方法，将E[]数组元素添加到对应类型的ArrayList中，并返回。
    public <E> ArrayList<E> copyFromArrayToList(E[] arr){
        ArrayList<E> list = new ArrayList<>();
        for (E e : arr) {
            list.add(e);
        }
        return list;
    }
}
```

**测试方法**

```java
        Order<String> order = new Order<>();

        Integer[] arr= new Integer[]{1,2,3,4,5,6,7,8,9,10};

        ArrayList<Integer> list = order.copyFromArrayToList(arr);
        for (Integer i : list) {
            System.out.println(i);
        }
```

### 泛型类型与继承

> * 类SuperA是类A的父类，则`G<SuperA> `与 `G<A>`的关系：`G<SuperA>` 和 `G<A>`是并列的两个类，没有任何子父类的关系。
>
>   ==比如：`ArrayList<Object> `与`ArrayList<String>`没有关系==
>
> * 类SuperA是类A的父类或接口，`SuperA<G>` 与 `A<G>`的关系：`SuperA`<G> 与`A<G>` 有继承或实现的关系。
>   即`A<G>`的实例可以赋值给`SuperA<G>`类型的引用（或变量）
>
>   ==比如：`List<String>` 与 `ArrayList<String>`==

#### `G<SuperA> `与 `G<A>`无继承关系

```java
    public void method(List<String> list){}

    //类SuperA是类A的父类，则G<SuperA> 与 G<A>的关系：G<SuperA> 和 G<A>是并列的两个类，没有任何子父类的关系。
    @Test
    public void test2(){
        ArrayList<Object> list1 = null;
        ArrayList<Object> list2 = new ArrayList<>();

        /**
         * 理解：本质上泛型可能为类的一个属性类型，
         *  如果ArrayList<Object>， ArrayList<Object>有关系
         *  那么我声明一个类的属性都为Object就可以代表所有相同个数属性的类了。
         *      这显然不符合常理
         */

//        list1  = list2;
//        method(list2);

    }
```

#### `SuperA<G>` 与 `A<G>`有继承关系

```java
        List<String> list1 = null;
        ArrayList<String> list2 = new ArrayList<>();

        list1 = list2;

        list1.add("AA");
        method(list2);
```

### 通配符的使用

#### `<?>`

##### 由来

> 虽然泛型类的泛型参数可能具有继承关系，但这与泛型类本身并没有关系，即他们属于不同的泛型类。
> 如：`ArrayList<String>`与`ArrayList<Object>`并没有继承关系，所以无法强转
>
> ​	这就意味着，==当一个方法的形参有泛型类时，我们并无法确定该泛型类的泛型是什么类型==，而如果我们用Object来替代该泛型时，又因为泛型参数不同的泛型类本身并无关系！所以无法用`<Object>`来表示所有的泛型类型可能，只能引入`<?>`

```java
//最常见的例子：Collection中的方法
boolean containsAll(Collection<?> c);
//如果声明为
boolean containsAll(Collection<Object> c);	//此时该方法就无法添加例如Collection<String>、Collection<Integer>等这样的参数了，只能添加类型
```

##### 例子：

```java
    //统配符 ? 的使用
    @Test
    public void test1(){
        List<?> list = null;
        List<Object> list1 = null;
        List<String> list2 = null;

        list =  list1;
        list = list2;


    }

    public void method(List<?> list){
        for (Object obj : list) {
            System.out.println(obj);
        }
//        list.add("AA");   //报错
    }

    @Test
    public void test2(){
        List<?> list = null;

        List<String> list1 = new ArrayList<>();
        list1.add("AA");
        list = list1;

        //读取数据
        Object o = list.get(0);
        System.out.println(o);

        //写入数据，报错
//        list.add("BB");
        //特例：可以将null写入集合中
        list.add(null);
    }
```

#### `<? extends Father>`

> `?` 是`Father`的子类或`Father`类
> 可以理解为`?`的范围为 `(-∞, Father]`

```java
// ? extends A
    @Test
    public void test3(){
        List<? extends Father> list = null;

        List<Object> list1 = null;
        List<Father> list2 = null;
        List<Son> list3 = null;

//        list = list1;
        list = list2;
        list = list3;
    }

    // ? extends A
    @Test
    public void test3_1(){
        List<? extends Father> list = null;

        ArrayList<Father> list1 = new ArrayList<>();
        list1.add(new Father());
        list = list1;

        //可以读数据
        Father father = list.get(0);

        //写入数据：不可以的。例外：null
        list.add(null);
        /**
         * 这样理解 <? extends Father>是一个无下界的范围类型形参，
         * 而实参必须是形参的类型，这样实参就无法找到与之对应的形参类型了
         */
//        list.add(new Father());
//        list.add(new Son());
    }
```



#### `<? super Son>`

> `?` 是`Son`的父类或`Son`类本身
> 可以理解为`?`的范围为 `[Son, Object]`

```java
    // ? super A
    @Test
    public void test4(){
        List<? super Father> list = null;

        List<Object> list1 = null;
        List<Father> list2 = null;
        List<Son> list3 = null;
        list = list1;
        list = list2;
//        list = list3;
    }

    // ? super A
    @Test
    public void test4_1(){
        List<? super Father> list = null;
        List<Father> list1 = new ArrayList<>();
        list1.add(new Father());

        list = list1;
        //读取数据
        Object object = list.get(0);

        //写入数据：可以将Father及其子类的对象添加进来
        list.add(null);
//        list.add(new Object());
        list.add(new Father());
        list.add(new Son());

    }
```

#### 三者之间的区别

> 除了一眼看见的特性，主要区别在于在==方法形参上泛型的体现==
>
> ```java
> //举例Collection中的方法	boolean add(E e);
> List<xxxx> list = new ArrayList<>();
> list.add(.........)		//看看此方法能添加进去什么？
> ```
>
> 总之一句话：==实参必须是形参的类型，实参要找形参范围外，低于或等于实参范围边界的区域==，只有这样才能确定实参属于哪个类型，才能进行自动类型转换。
>
> 以下==范围为形参范围，要添加的数据为实参==
> ①`<?>`范围为`(-∞, +∞)`	无法添加数据
> ②`<? extends Father>`范围为`(-∞, Father]`	无法添加数据
> ③`<? super Son>`范围为`[Son, Object]`	添加数据的类型范围为`(-∞, Son]`
>
> 以上都可以添加`null`值进去

### JDK新版本新写法

> 都是通过自动类型推断来实现的

jdk7.0新特性

```java
ArrayList<String> list1 = new ArrayList<>();
```

后续版本新特性

```java
Comparator<Employee> comparator = new Comparator<>(){}
```



## 数据结构与集合原理

> 数据结构概念：
> 数据结构，就是一种程序设计优化的方法论，研究数据的`逻辑结构`和`物理结构`以及它们之间相互关系，
> 并对这种结构定义相应的`运算`，目的是加快程序的执行速度、减少内存占用的空间。
>
> 数据结构的研究对象
> 	研究对象1：数据之间的逻辑关系
> 		集合结构
> 		线性结构：一对一关系
> 		树形结构：一对多关系
> 		图形结构：多对多关系
>
> ​	研究对象2：数据的存储结构（或物理结构）
> ​		顺序结构
> ​		链式结构
> ​		索引结构
> ​		散列结构
>
> ​	研究对象3：相关的算法操作
> ​		分配资源，建立结构，释放资源
> ​		插入和删除
> ​		获取和遍历
> ​		修改和排序

### 一些数据存储结构说明

#### 索引结构

- 除建立存储节点信息外，还建立附加的`索引表`来记录每个元素节点的地址。索引表由若干索引项组成。索引项的一般形式是：（关键字，地址）。
- 优点：用节点的索引号来确定结点存储地址，检索速度快。
- 缺点： 增加了附加的索引表，会占用较多的存储空间。在增加和删除数据时要修改索引表，因而会花费较多的时间。

![1692237748754](Java.assets/1692237748754.png)

#### 散列结构

- 根据元素的关键字直接计算出该元素的存储地址，又称为Hash存储。
- 优点：检索、增加和删除结点的操作都很快。
- 缺点：不支持排序，一般比用线性表存储需要更多的空间，并且记录的关键字不能重复。

![1692237906220](Java.assets/1692237906220.png)

### 常见数据结构的声明

#### 单向链表

```java
class Node{
    Object data;
    Node next;

    public Node(Object data){
        this.data = data;
    }

}
```

```java
创建对象：
Node node1 = new Node("AA");
Node node2 = new Node("BB");
node1.next = node2;
```

#### 双向链表

```java
class Node{
    Node prev;
    Object data;
    Node next;

    public Node(Object data){
        this.data = data;
    }

    public Node(Node prev,Object data,Node next){
        this.prev = prev;
        this.data = data;
        this.next = next;
    }

}
```

```java
//创建对象：
Node node1 = new Node(null,"AA",null);
Node node2 = new Node(node1,"BB",null);
Node node3 = new Node(node2,"CC",null);

node1.next = node2;
node2.next = node3;
```

#### 二叉树

```java
class TreeNode{
    TreeNode left;
    Object data;
    TreeNode right;

    public TreeNode(Object data){
        this.data = data;
    }

    public TreeNode(TreeNode left,Object data,TreeNode right){
        this.left = left;
        this.data = data;
        this.right = right;
    }
}
```

```java
//创建对象：
TreeNode node1 = new TreeNode(null,"AA",null);
TreeNode leftNode = new TreeNode(null,"BB",null);
TreeNode rightNode = new TreeNode(null,"CC",null);
node1.left = leftNode;
node1.right = rightNode;
```

或

```java
class TreeNode{
    TreeNode parent;
    TreeNode left;
    Object data;
    TreeNode right;

    public TreeNode(Object data){
        this.data = data;
    }

    public TreeNode(TreeNode left,Object data,TreeNode right){
        this.left = left;
        this.data = data;
        this.right = right;
    }

    public TreeNode(TreeNode parent,TreeNode left,Object data,TreeNode right){
        this.parent = parent;
        this.left = left;
        this.data = data;
        this.right = right;
    }
}
```

```java
//创建对象：
TreeNode node1 = new TreeNode(null,null,"AA",null);
TreeNode leftNode = new TreeNode(node1,null,"BB",null);
TreeNode rightNode = new TreeNode(node1,null,"CC",null);
node1.left = leftNode;
node1.right = rightNode;
```

#### 栈

> 属于抽象数据类型（ADT）

```java
//数组实现栈
class Stack{
    Object[] values;
    int size;//记录存储的元素的个数

    public Stack(int length){
        values = new Object[length];
    }

    //入栈
    public void push(Object ele){
        if(size >= values.length){
            throw new RuntimeException("栈空间已满，入栈失败");
        }

        values[size] = ele;
        size++;
    }

    //出栈
    public Object pop(){
        if(size <= 0){
            throw new RuntimeException("栈空间已空，出栈失败");
        }

        Object obj = values[size - 1];
        values[size - 1] = null;
        size--;
        return obj;

    }

}
```

#### 队列

> 属于抽象数据类型（ADT）

```java
//数组实现队列
class Queue{
    Object[] values;
    int size;//记录存储的元素的个数

    public Queue(int length){
        values = new Object[length];
    }

    public void add(Object ele){ //添加
        if(size >= values.length){
            throw new RuntimeException("队列已满，添加失败");
        }

        values[size] = ele;
        size++;
    }

    public Object get(){  //获取
        if(size <= 0){
            throw new RuntimeException("队列已空，获取失败");
        }

        Object obj = values[0];

        //数据前移
        for(int i = 0;i < size - 1;i++){
            values[i] = values[i + 1];
        }

        //最后一个元素置空
        vlaues[size - 1] = null;

        size--;

        return obj;
    }

}
```

### List原理解析

#### ArrayList

##### ArrayList的特点

> * 实现了List接口，存储有序的、可以重复的数据
> * 底层使用Object[]数组存储
> * 线程不安全的

##### ArrayList原理解析

**jdk7版本：(以jdk1.7.0_07为例)**

```java
//如下代码的执行：底层会初始化数组，数组的长度为10。Object[] elementData = new Object[10];
ArrayList<String> list = new ArrayList<>();

list.add("AA"); //elementData[0] = "AA";
list.add("BB");//elementData[1] = "BB";
...
```

当要添加第11个元素的时候，底层的elementData数组已满，则需要扩容。默认==扩容为原来长度的1.5倍==。并将原有数组中的元素复制到新的数组中。

**jdk8版本:(以jdk1.8.0_271为例)**

```java
//如下代码的执行：底层会初始化数组，即：Object[] elementData = new Object[]{};
ArrayList<String> list = new ArrayList<>();

list.add("AA"); //首次添加元素时，会初始化数组elementData = new Object[10];elementData[0] = "AA";
list.add("BB");//elementData[1] = "BB";
...
```

小结：
jdk1.7.0_07版本中：ArrayList类似于饿汉式
jdk1.8.0_271版本中：ArrayList类似于懒汉式

#### Vector

##### Vector特点

> 实现了List接口，存储有序的、可以重复的数据
> 底层使用Object[]数组存储
> 线程安全的

##### Vector原理解析

```java
Vector v = new Vector(); //底层初始化数组，长度为10.Object[] elementData = new Object[10];
v.add("AA"); //elementData[0] = "AA";
v.add("BB");//elementData[1] = "BB";
...

```

当添加第11个元素时，需要扩容。默认==扩容为原来的2倍==。

#### LinkedList

##### LinkedList的特点

> * 实现了List接口，存储有序的、可以重复的数据
> * 底层使用双向链表存储
> * 线程不安全的

##### LinkedList原理解析

**jdk8**

```java
LinkedList<String> list = new LinkedList<>(); //底层也没做啥
list.add("AA"); //将"AA"封装到一个Node对象1中，list对象的属性first、last都指向此Node对象1。
list.add("BB"); //将"BB"封装到一个Node对象2中，对象1和对象2构成一个双向链表，同时last指向此Node对象2

...
```

```java
//LinkedList内部声明：
private static class Node<E> {
    E item;
    Node<E> next;
    Node<E> prev;
}

```

注：LinkedList不存在扩容问题。

#### List之间的选型

> 1. Vector基本不使用了。
> 2. ArrayList底层使用数组结构，==查找和添加（尾部添加）操作效率高==，时间复杂度为O(1)
>                            删除和插入操作效率低，时间复杂度为O(n)
>    LinkedList底层使用双向链表结构，==删除和插入操作效率高==，时间复杂度为O(1)
>                               查找和添加（尾部添加）操作效率高，时间复杂度为O(n) (有可能添加操作是O(1))
>
> 3. 在选择了ArrayList的前提下，new ArrayList() : 底层创建长度为10的数组。
>                           new ArrayList(int capacity):底层创建指定capacity长度的数组。
>    如果开发中，大体确认数组的长度，则推荐使用ArrayList(int capacity)这个构造器，避免了底层的扩容、复制数组的操作。

### Map原理解析

#### HashMap

##### HashMap的特点

> * HashMap中的所有的key彼此之间是不可重复的、无序的。所有的key就构成一个Set集合。--->key所在的类要重写hashCode()和equals()
> * HashMap中的所有的value彼此之间是可重复的、无序的。所有的value就构成一个Collection集合。--->value所在的类要重写equals()
> * HashMap中的一个key-value,就构成了一个entry。
> * HashMap中的所有的entry彼此之间是不可重复的、无序的。所有的entry就构成了一个Set集合。

##### HashMap原理解析

###### **jdk7中创建对象和添加数据过程(以JDK1.7.0_07为例说明)**

```java
//创建对象的过程中，底层会初始化数组Entry[] table = new Entry[16];
HashMap<String,Integer> map = new HashMap<>();
...
map.put("AA",78); //"AA"和78封装到一个Entry对象中，考虑将此对象添加到table数组中。
...
```

> **添加/修改的过程：**
> 将(key1,value1)添加到当前的map中：
> 首先，需要调用key1所在类的==hashCode()==方法，计算key1对应的哈希值1，此哈希值1经过某种算法==(hash())==之后，得到哈希值2。
> 哈希值2再经过某种算法(indexFor())之后，就确定了(key1,value1)在数组table中的索引位置i。
>   1.1 如果此索引位置i的数组上没有元素，则(key1,value1)添加成功。  ---->情况1
>   1.2 如果此索引位置i的数组上有元素(key2,value2),则需要继续比较key1和key2的哈希值2  --->哈希冲突
>          2.1 如果key1的哈希值2与key2的哈希值2不相同，则(key1,value1)添加成功。   ---->情况2
>          2.2 如果key1的哈希值2与key2的哈希值2相同，则需要继续比较key1和key2的equals()。要调用key1所在类的equals(),将key2作为参数传递进去。
>                3.1 调用equals()，返回false: 则(key1,value1)添加成功。   ---->情况3
>                3.2 调用equals()，返回true: 则认为key1和key2是相同的。默认情况下，value1替换原有的value2。
>
> 说明：情况1：将(key1,value1)存放到数组的索引i的位置
>      	情况2,情况3：(key1,value1)元素与现有的(key2,value2)构成单向链表结构，(key1,value1)指向(key2,value2)

> 随着不断的添加元素，在满足如下的条件的情况下，会考虑**扩容**：
> (size >= threshold) && (null != table[i])
> 当元素的个数达到临界值(-> 数组的长度 * 加载因子)时，就考虑扩容。默认的临界值 = 16 * 0.75 --> 12.
> 默认扩容为原来的2倍。

###### **jdk8与jdk7的不同之处(以jdk1.8.0_271为例)**

> ① 在jdk8中，当我们创建了HashMap实例以后，底层并没有初始化table数组。当首次添加(key,value)时，进行判断，
> 如果发现table尚未初始化，则对数组进行初始化。
> ② 在jdk8中，HashMap底层定义了Node内部类，替换jdk7中的Entry内部类。意味着，我们创建的数组是Node[]
> ③ 在jdk8中，如果当前的(key,value)经过一系列判断之后，可以添加到当前的数组角标i中。如果此时角标i位置上有
>    元素。在jdk7中是将新的(key,value)指向已有的旧的元素（头插法），而在jdk8中是旧的元素指向新的
>    (key,value)元素（尾插法）。 "七上八下"
> ④ jdk7:数组+单向链表
>    jk8:数组+单向链表 + 红黑树
>    什么时候会使用单向链表变为红黑树：如果数组索引i位置上的元素的个数达到8，并且数组的长度达到64时，我们就将此索引i位置上
>                                的多个元素改为使用红黑树的结构进行存储。（为什么修改呢？红黑树进行put()/get()/remove()
>                                操作的时间复杂度为O(logn)，比单向链表的时间复杂度O(n)的好。性能更高。
>    什么时候会使用红黑树变为单向链表：当使用红黑树的索引i位置上的元素的个数低于6的时候，就会将红黑树结构退化为单向链表。

###### 属性/字段

```java
static final int DEFAULT_INITIAL_CAPACITY = 1 << 4; // 默认的初始容量 16
static final int MAXIMUM_CAPACITY = 1 << 30; //最大容量  1 << 30
static final float DEFAULT_LOAD_FACTOR = 0.75f;  //默认加载因子
static final int TREEIFY_THRESHOLD = 8; //默认树化阈值8，当链表的长度达到这个值后，要考虑树化
static final int UNTREEIFY_THRESHOLD = 6;//默认反树化阈值6，当树中结点的个数达到此阈值后，要考虑变为链表

//当单个的链表的结点个数达到8，并且table的长度达到64，才会树化。
//当单个的链表的结点个数达到8，但是table的长度未达到64，会先扩容
static final int MIN_TREEIFY_CAPACITY = 64; //最小树化容量64

transient Node<K,V>[] table; //数组
transient int size;  //记录有效映射关系的对数，也是Entry对象的个数
int threshold; //阈值，当size达到阈值时，考虑扩容
final float loadFactor; //加载因子，影响扩容的频率
```

##### 关键源码

###### 实例化过程

```java
HashMap<String,Integer> map = new HashMap<>();
```

对应的源码：

```java
public HashMap() {
    this(DEFAULT_INITIAL_CAPACITY, DEFAULT_LOAD_FACTOR);
}
```

```java
public HashMap(int initialCapacity, float loadFactor) {
    //...略...

    //通过此循环，得到capacity的最终值，此最终值决定了Entry数组的长度。此时的capacity一定是2的整数倍
    int capacity = 1;
    while (capacity < initialCapacity)
        capacity <<= 1;

    this.loadFactor = loadFactor; //确定了加载因子的值
    threshold = (int)Math.min(capacity * loadFactor, MAXIMUM_CAPACITY + 1);  //确定了临界值
    table = new Entry[capacity]; //初始化数组，长度为capacity
    
    //..略..
}
```

其中：

```java
static final int DEFAULT_INITIAL_CAPACITY = 16;
static final float DEFAULT_LOAD_FACTOR = 0.75f;

final float loadFactor; //加载因子
int threshold;//临界值
transient Entry<K,V>[] table; //存储数组的数组
```

###### put(key,value)的过程

```java
public V put(K key, V value) {
    //HashMap允许添加key为null的值。将此(key,value)存放到table索引0的位置。
    if (key == null)
        return putForNullKey(value);
    //将key传入hash()，内部使用了key的哈希值1，此方法执行结束后，返回哈希值2
    int hash = hash(key);
    //确定当前key，value在数组中的存放位置i
    int i = indexFor(hash, table.length);
    
    for (Entry<K,V> e = table[i]; e != null; e = e.next) {
        Object k;
        if (e.hash == hash && ((k = e.key) == key || key.equals(k))) {
            V oldValue = e.value;
            e.value = value;
            e.recordAccess(this);
            return oldValue;  //如果put是修改操作，会返回原有旧的value值。
        }
    }

    //.....
    addEntry(hash, key, value, i); //将key,value封装为一个Entry对象，并将此对象保存在索引i位置。
    return null; //如果put是添加操作，会返回null.
}
```

其中：

```java
final int hash(Object k) {
    int h = 0;
    if (useAltHashing) {
        if (k instanceof String) {
            return sun.misc.Hashing.stringHash32((String) k);
        }
        h = hashSeed;
    }

    h ^= k.hashCode();

    // This function ensures that hashCodes that differ only by
    // constant multiples at each bit position have a bounded
    // number of collisions (approximately 8 at default load factor).
    h ^= (h >>> 20) ^ (h >>> 12);
    return h ^ (h >>> 7) ^ (h >>> 4);
}
```

```java
static int indexFor(int h, int length) {
    return h & (length-1);
}
```

```java
void addEntry(int hash, K key, V value, int bucketIndex) {
    //扩容的条件
    if ((size >= threshold) && (null != table[bucketIndex])) {
        resize(2 * table.length); //默认扩容为原有容量的2倍
        hash = (null != key) ? hash(key) : 0;
        bucketIndex = indexFor(hash, table.length);
    }

    createEntry(hash, key, value, bucketIndex);
}
```

```java
void createEntry(int hash, K key, V value, int bucketIndex) {
    Entry<K,V> e = table[bucketIndex];
    table[bucketIndex] = new Entry<>(hash, key, value, e);
    size++;
}
```

######  Entry的定义如下

```java
static class Entry<K,V> implements Map.Entry<K,V> {
    final K key;
    V value;
    Entry<K,V> next;
    int hash;  //使用key得到的哈希值2进行赋值。

    /**
         * Creates new entry.
         */
    Entry(int h, K k, V v, Entry<K,V> n) {
        value = v;
        next = n;
        key = k;
        hash = h;
    }
}
```







#### LinkedHashMap

##### LinkedHashMap 与 HashMap 的关系

> * LinkedHashMap 是 HashMap的子类。
> * LinkedHashMap在HashMap使用的数组+单向链表+红黑树的基础上，又增加了一对双向链表，记录添加的(key,value)的
>   先后顺序。便于我们遍历所有的key-value。

LinkedHashMap重写了HashMap的如下方法：

```java
Node<K,V> newNode(int hash, K key, V value, Node<K,V> e) {
    LinkedHashMap.Entry<K,V> p = new LinkedHashMap.Entry<K,V>(hash, key, value, e);
    linkNodeLast(p);
    return p;
}
```

##### 底层结构

**LinkedHashMap内部定义了一个Entry**

```java
static class Entry<K,V> extends HashMap.Node<K,V> {
    Entry<K,V> before, after; //增加的一对双向链表
    Entry(int hash, K key, V value, Node<K,V> next) {
        super(hash, key, value, next);
    }
}
```

### Set原理解析

> HashSet底层使用的是HashMap
> LinkedHashSet底层使用的是LinkedHashMap

## File类与IO

> [<font color="violet">IO流.xmind</font>](./相关资料/Xmind/相关API/io/IO流.xmind)

### File类

#### File类的理解

> * File类位于java.io包下，本章中涉及到的相关流也都声明在java.io包下。
> * File类的一个对象，对应与操作系统下的一个文件或一个文件目录（或文件夹）
> * File类中声明了新建、删除、获取名称、重命名等方法，并没有涉及到文件内容的读写操作。要想实现文件内容的读写，
>     我们就需要使用io流。
> * File类的对象，通常是作为io流操作的文件的端点出现的。
>      代码层面，将File类的对象作为参数传递到IO流相关类的构造器中。

#### 相关API

>  [<font color="violet">File.xmind</font>](./相关资料/Xmind/相关API/io/File.xmind)

##### 构造器

- `public File(String pathname) ` ：以pathname为路径创建File对象，可以是绝对路径或者相对路径，如果pathname是相对路径，则默认的当前路径在系统属性user.dir中存储。
- `public File(String parent, String child) ` ：以parent为父路径，child为子路径创建File对象。
- `public File(File parent, String child)` ：根据一个父File对象和子文件路径创建File对象。

关于路径：

- **绝对路径：**从盘符开始的路径，这是一个完整的路径。
- **相对路径：**相对于`项目目录`的路径，这是一个便捷的路径，开发中经常使用。
  - IDEA中，main中的文件的相对路径，是相对于"`当前工程`"
  - IDEA中，单元测试方法中的文件的相对路径，是相对于"`当前module`"

> 注意：
>
> 1. 无论该路径下是否存在文件或者目录，都不影响File对象的创建。
> 2. window的路径分隔符使用“\”，而Java程序中的“\”表示转义字符，所以在Windows中表示路径，需要用“\\”。或者直接使用“/”也可以，Java程序支持将“/”当成平台无关的`路径分隔符`。或者直接使用File.separator常量值表示。比如：
>
> File file2 = new File("d:" + File.separator + "atguigu" + File.separator + "info.txt");
>
> 3. 当构造路径是绝对路径时，那么getPath和getAbsolutePath结果一样
>
> 当构造路径是相对路径时，那么getAbsolutePath的路径 = user.dir的路径 + 构造路径

##### 常用方法

###### 获取文件和目录基本信息

- public String getName() ：获取名称
- public String getPath() ：获取路径
- `public String getAbsolutePath()`：获取绝对路径
- public File getAbsoluteFile()：获取绝对路径表示的文件
- `public String getParent()`：获取上层文件目录路径。若无，返回null
- public long length() ：获取文件长度（即：字节数）。不能获取目录的长度。
- public long lastModified() ：获取最后一次的修改时间，毫秒值

> 如果File对象代表的文件或目录存在，则File对象实例初始化时，就会用硬盘中对应文件或目录的属性信息（例如，时间、类型等）为File对象的属性赋值，否则除了路径和名称，File对象的其他属性将会保留默认值。

###### 列出目录的下一级

- public String[] list() ：返回一个String数组，表示该File目录中的所有子文件或目录。
- public File[] listFiles() ：返回一个File数组，表示该File目录中的所有的子文件或目录。

###### File类重命名

>  可以看作是移动文件

* public boolean renameTo(File dest):把文件重命名为指定的文件路径。

###### 判断

- `public boolean exists()` ：此File表示的文件或目录是否实际存在。
- `public boolean isDirectory()` ：此File表示的是否为目录。
- `public boolean isFile()` ：此File表示的是否为文件。
- public boolean canRead() ：判断是否可读
- public boolean canWrite() ：判断是否可写
- public boolean isHidden() ：判断是否隐藏

###### 创建、删除功能

- `public boolean createNewFile()` ：创建文件。若文件存在，则不创建，返回false。
- `public boolean mkdir()` ：创建文件目录。如果此文件目录存在，就不创建了。如果此文件目录的上层目录不存在，也不创建。
- `public boolean mkdirs()` ：创建文件目录。如果上层文件目录不存在，一并创建。
- `public boolean delete()` ：删除文件或者文件夹
  删除注意事项：① Java中的删除不走回收站。② 要删除一个文件目录，请注意该文件目录内不能包含文件或者文件目录。

#### 经典案例

##### 计算指定文件目录占用空间的大小

```java
/*
     * 拓展1：计算指定文件目录占用空间的大小
     * */
    public long getDirectorySize(File file){
        // file是文件，那么直接返回file.length()
        // file是目录，把它的下一级的所有大小加起来就是它的总大小
        long size = 0;
        if (file.isFile()){
            size = file.length();
        }else {
            File[] files = file.listFiles();
            for (File f : files) {
                size += getDirectorySize(f);
            }
        }
        return size;
    }
    @Test
    public void testGetDirectorySize(){
        File file = new File("D:\\tmp\\dirtmp");
        System.out.println("总文件大小为：" + getDirectorySize(file) + "字节");
    }
```

##### 在统计目录下创建另一个文件

```java
        //创建一个与hello.txt文件在相同文件目录下的另一个名为abc.txt文件
        File file1 = new File("hello.txt");

        System.out.println(file1.getAbsolutePath());
        //获取file1的绝对路径，获取此路径的上层文件目录。
//        System.out.println(file1.getAbsoluteFile().getParent());

        File file2 = new File(file1.getAbsoluteFile().getParent(), "abc.txt");
        System.out.println(file2.createNewFile());
        System.out.println(file1.getAbsolutePath());
```

##### 筛选固定文件格式的文件

```java
 @Test
    public void test1(){
        File dir = new File("D:\\tmp\\dirtmp\\01-Programmer Day");

        //方式一
        /*String[] listFiles = dir.list();
        for (String listFile : listFiles) {
            if (listFile.endsWith(".jpg"))
                System.out.println(listFile);
        }*/

        //方式2：
        //public String[] list(FilenameFilter filter)
        String[] listFileString = dir.list(new FilenameFilter() {
            @Override
            public boolean accept(File dir, String name) {////name:即为子文件或子文件目录的名称
                /*if (name.endsWith(".jpg"))
                    return true;
                else
                    return false;*/
                return name.endsWith(".jpg");
            }
        });

        for (String s : listFileString) {
            System.out.println(s);
        }


    }
```

##### 打印所有文件或目录的名称

```java
    @Test
    public void test1(){
        File file = new File("D:\\tmp\\dirtmp");
        printFileName(file);
    }

    //打印所有文件的名称
    public void printFileName(File file){
        if (file.isFile()){
            System.out.println(file.getName());
        }else if (file.isDirectory()){
            File[] files = file.listFiles();
            for (File f : files) {
                printFileName(f);
            }
        }
    }
```

##### 删除指定目录或文件

```java
/*
     * 拓展2：删除指定文件目录及其下的所有文件
     * */
    public void deleteDirectory(File file){
        // 如果file是文件，直接delete
        // 如果file是目录，先把它的下一级干掉，然后删除自己
        if (file.isDirectory()){
            File[] files = file.listFiles();
            for (File f : files) {
                deleteDirectory(f);
            }
        }
        //删除自己
        file.delete();
    }

    @Test
    public void testDeleteDirectory(){
        File file = new File("D:\\tmp\\dirtmp");
        deleteDirectory(file);

        System.out.println("删除完毕");
    }
```



### IO流原理及流的分类

> 1. 基础IO流的框架
> 抽象基类              4个节点流 (也称为文件流)            4个缓冲流（处理流的一种）
> 	InputStream         FileInputStream                 	BufferedInputStream
> OutputStream        FileOutputStream                BufferedOutputStream
> 	Reader              		FileReader                     	 BufferedReader
> 	Writer              			FileWriter                      BufferedWriter

#### Java IO原理

- Java程序中，对于数据的输入/输出操作以“`流(stream)`” 的方式进行，可以看做是一种数据的流动。

  <img src="Java.assets/image-20220503123117300.png" alt="image-20220503123117300" style="zoom: 80%;" />

- I/O流中的I/O是`Input/Output`的缩写， I/O技术是非常实用的技术，用于处理设备之间的数据传输。如读/写文件，网络通讯等。

  - `输入input`：读取外部数据（磁盘、光盘等存储设备的数据）到程序（内存）中。
  - `输出output`：将程序（内存）数据输出到磁盘、光盘等存储设备中。

![image-20220412224700133](Java.assets/image-20220412224700133-1692589486899.png)

#### 流的分类

`java.io`包下提供了各种“流”类和接口，用以获取不同种类的数据，并通过`标准的方法`输入或输出数据。

- 按数据的流向不同分为：**输入流**和**输出流**。

  - **输入流** ：把数据从`其他设备`上读取到`内存`中的流。 
    - 以InputStream、Reader结尾
  - **输出流** ：把数据从`内存` 中写出到`其他设备`上的流。
    - 以OutputStream、Writer结尾

- 按操作数据单位的不同分为：**字节流（8bit）**和**字符流（16bit）**。

  - **字节流** ：以字节为单位，读写数据的流。
    - 以InputStream、OutputStream结尾
  - **字符流** ：以字符为单位，读写数据的流。
    - 以Reader、Writer结尾

- 根据IO流的角色不同分为：**节点流**和**处理流**。

  - **节点流**：直接从数据源或目的地读写数据

    ![image-20220412230745170](Java.assets/image-20220412230745170-1692589492300.png)

  - **处理流**：不直接连接到数据源或目的地，而是“连接”在已存在的流（节点流或处理流）之上，通过对数据的处理为程序提供更为强大的读写功能。

    ![image-20220412230751461](Java.assets/image-20220412230751461.png)

小结：图解

<img src="Java.assets/image-20220412225253349.png" alt="image-20220412225253349" style="zoom:67%;" />

#### 流的API

- Java的IO流共涉及40多个类，实际上非常规则，都是从如下4个抽象基类派生的。

| （抽象基类） |   输入流    |    输出流    |
| :----------: | :---------: | :----------: |
|    字节流    | InputStream | OutputStream |
|    字符流    |   Reader    |    Writer    |

- 由这四个类派生出来的子类名称都是以其父类名作为子类名后缀。

![image-20220412230501953](Java.assets/image-20220412230501953-1692589519025.png)

**常用的节点流：** 　

- 文件流： FileInputStream、FileOutputStrean、FileReader、FileWriter 
- 字节/字符数组流： ByteArrayInputStream、ByteArrayOutputStream、CharArrayReader、CharArrayWriter 
  - 对数组进行处理的节点流（对应的不再是文件，而是内存中的一个数组）。

**常用处理流：**

- 缓冲流：BufferedInputStream、BufferedOutputStream、BufferedReader、BufferedWriter
  - 作用：增加缓冲功能，避免频繁读写硬盘，进而提升读写效率。
- 转换流：InputStreamReader、OutputStreamReader
  - 作用：实现字节流和字符流之间的转换。
- 对象流：ObjectInputStream、ObjectOutputStream
  - 作用：提供直接读写Java对象功能

### 节点流

> 注意：当完成流的操作时，必须调用close()方法，释放系统资源，否则会造成内存泄漏。

#### FileReader\FileWriter（字符）

##### Reader

> `java.io.Reader`抽象类是表示用于读取字符流的所有类的父类，可以读取字符信息到内存中。它定义了字符输入流的基本共性功能方法。

- `public int read()`： 从输入流读取一个字符。 虽然读取了一个字符，但是会自动提升为int类型。返回该字符的Unicode编码值。如果已经到达流末尾了，则返回-1。
- `public int read(char[] cbuf)`： 从输入流中读取一些字符，并将它们存储到字符数组 cbuf中 。每次最多读取cbuf.length个字符。返回实际读取的字符个数。如果已经到达流末尾，没有数据可读，则返回-1。 
- `public int read(char[] cbuf,int off,int len)`：从输入流中读取一些字符，并将它们存储到字符数组 cbuf中，从cbuf[off]开始的位置存储。每次最多读取len个字符。返回实际读取的字符个数。如果已经到达流末尾，没有数据可读，则返回-1。 
- `public void close()` ：关闭此流并释放与此流相关联的任何系统资源。

##### Writer

>  `java.io.Writer `抽象类是表示用于写出字符流的所有类的超类，将指定的字符信息写出到目的地。它定义了字节输出流的基本共性功能方法。 

- `public void write(int c)` ：写出单个字符。
- `public void write(char[] cbuf) `：写出字符数组。 
- `public void write(char[] cbuf, int off, int len) `：写出字符数组的某一部分。off：数组的开始索引；len：写出的字符个数。 
- `public void write(String str) `：写出字符串。 
- `public void write(String str, int off, int len)` ：写出字符串的某一部分。off：字符串的开始索引；len：写出的字符个数。
- `public void flush() `：刷新该流的缓冲。  
- `public void close()` ：关闭此流。

##### FileReader

> `java.io.FileReader `类==用于读取字符文件==，构造时使用系统默认的字符编码和默认字节缓冲区。

- `FileReader(File file)`： 创建一个新的 FileReader ，给定要读取的File对象。   
- `FileReader(String fileName)`： 创建一个新的 FileReader ，给定要读取的文件的名称。  

##### FileWriter

> `java.io.FileWriter `类用于写出字符到文件，构造时使用系统默认的字符编码和默认字节缓冲区。

- `FileWriter(File file)`： 创建一个新的 FileWriter，给定要读取的File对象。   
- `FileWriter(String fileName)`： 创建一个新的 FileWriter，给定要读取的文件的名称。  
- `FileWriter(File file,boolean append)`： 创建一个新的 FileWriter，指明是否在现有文件末尾追加内容。

##### 案例

> FileReader \ FileWriter 的使用
> 执行步骤：
> 第1步：创建读取或写出的File类的对象
> 第2步：创建输入流或输出流
> 第3步：具体的读入或写出的过程。
>      读入：read(char[] cbuffer)
>      写出：write(String str) / write(char[] cbuffer,0,len)
> 第4步：关闭流资源，避免内存泄漏

> 总结：
>
> ① 
> 因为出现流资源的调用，为了避免内存泄漏，需要使用try-catch-finally处理异常
>
> ② 
> 对于输入流来说，File类的对象必须在物理磁盘上存在，否则执行就会报FileNotFoundException。如果传入的是一个目录，则会报IOException异常。
>
> 对于输出流来说，File类的对象是可以不存在的。
>
> 如果File类的对象不存在，则可以在输出的过程中，自动创建File类的对象
> 如果File类的对象存在，
>       > 如果调用FileWriter(File file)或FileWriter(File file,false)，输出时会新建File文件覆盖已有的文件
>       > 如果调用FileWriter(File file,true)构造器，则在现有的文件末尾追加写出内容。

###### 读取文件内容，显示在控制台上

```java
/*
     * 需求：读取hello.txt中的内容，显示在控制台上。
     *
     * 异常使用throws的方式处理，不太合适。见 test2()
     * */
    @Test
    public void test1() throws IOException {
        //1.创建File类的对象，对应着hello.txt文件
        File file = new File("hello.txt");

        //2.创建输入型的字符流，用于读取数据
        FileReader fileReader = new FileReader(file);

        //3.读取数据，并显示在控制台上
        //方式一
        /*int data = fileReader.read();
        while (data != -1){
            System.out.print((char) data);
            data = fileReader.read();
        }*/
        //方式二
        int data;
        while ((data= fileReader.read()) != -1){
            System.out.print((char) data);
        }

        //4. 流资源的关闭操作（必须要关闭，否则会内存泄漏）
        fileReader.close();
    }
```

```java
/*
     * 需求：读取hello.txt中的内容，显示在控制台上。
     * 使用try-catch-finally的方式处理异常。确保流一定可以关闭，避免内存泄漏
     * */
    @Test
    public void test2(){
        FileReader fileReader = null;
        try {
            File file = new File("hello.txt");
            fileReader = new FileReader(file);	//如果这里没有创建成功，在下面进行关闭资源时就有可能

            int data;
            while ((data= fileReader.read()) != -1)
                System.out.print((char) data);
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                if (fileReader != null)
                    fileReader.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
```

```java
/*
     * 需求：读取hello.txt中的内容，显示在控制台上。
     *
     * 对test2()进行优化，每次读取多个字符存放到字符数组中，减少了与磁盘交互的次数，提升效率。
     *
     * */
    @Test
    public void test3(){
        FileReader fileReader = null;
        try {
            //1.创建File类的对象，对应着hello.txt文件
            File file = new File("hello.txt");
            //2.创建输入型的字符流，用于读取数据
            fileReader = new FileReader(file);

            //3.读取数据，并显示在控制台上
            char[] cbuf = new char[5];
            int len;
            while ((len= fileReader.read(cbuf)) != -1) {
                //遍历数组:错误的写法
//                for (int i = 0; i < cbuffer.length; i++) {
//                    System.out.print(cbuffer[i]);
//                }
                for (int i = 0; i < len; i++) {
                    System.out.print(cbuf[i]);
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                if (fileReader != null)
                    fileReader.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
```

###### 将内存中的数据写出到指定文件

```java
/*
     * 需求：将内存中的数据写出到指定的文件中
     * */
    @Test
    public void test4(){
        FileWriter fileWriter = null;
        try {
            File file = new File("info.txt");
            //直接覆盖源文件
//            fileWriter = new FileWriter(file);  //fileWriter = new FileWriter(file, false);
            //在源文件后面进行拼接
            fileWriter = new FileWriter(file, true);


            fileWriter.write("I love you\n");
            fileWriter.write("game\n");
            fileWriter.write("静下心来吧");

            System.out.println("输出成功");
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                if (fileWriter != null)
                    fileWriter.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

    }
```

###### 复制文本文件

```java
/*
     * 需求：复制一份hello.txt文件，命名为hello_copy.txt
     * */
    @Test
    public void test5() {
        FileReader fr = null;
        FileWriter fw = null;

        try {
            //1. 创建File类的对象
            File srcFile = new File("hello.txt");
            File destFile = new File("hello_copy.txt");

            //2. 创建输入流、输出流
            fr = new FileReader(srcFile);
            fw = new FileWriter(destFile);

            //3. 数据的读入和写出的过程
            char[] cbuffer = new char[5];
            int len;//记录每次读入到cbuffer中的字符的个数
            while ((len = fr.read(cbuffer)) != -1) {
                //write(char[] cbuffer,int fromIndex,int len)
                fw.write(cbuffer, 0, len); //正确的
//                fw.write(cbuffer); //错误的
            }

            System.out.println("复制成功");
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            //4. 关闭流资源
            //方式1：嵌套
//            try {
                //if (fw != null)
//                  fw.close();
//            } catch (IOException e) {
//                e.printStackTrace();
//            }finally {
//
//                try {
                    //if (fr != null)
//                    fr.close();
//                } catch (IOException e) {
//                    e.printStackTrace();
//                }
//            }
            //方式2：并列
            try {
                if (fw != null)
                    fw.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            try {
                if (fr != null)
                    fr.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }


    }
```

#### FileInputStream\FileOutputStream（字节）

> 说明：close()方法，当完成流的操作时，必须调用此方法，释放系统资源。

##### InputStream

> `java.io.InputStream `抽象类是表示字节输入流的所有类的超类，可以读取字节信息到内存中。它定义了字节输入流的基本共性功能方法。

- `public int read()`： 从输入流读取一个字节。返回读取的字节值。虽然读取了一个字节，但是会自动提升为int类型。如果已经到达流末尾，没有数据可读，则返回-1。 
- `public int read(byte[] b)`： 从输入流中读取一些字节数，并将它们存储到字节数组 b中 。每次最多读取b.length个字节。返回实际读取的字节个数。如果已经到达流末尾，没有数据可读，则返回-1。 
- `public int read(byte[] b,int off,int len)`：从输入流中读取一些字节数，并将它们存储到字节数组 b中，从b[off]开始存储，每次最多读取len个字节 。返回实际读取的字节个数。如果已经到达流末尾，没有数据可读，则返回-1。 
- `public void close()` ：关闭此输入流并释放与此流相关联的任何系统资源。

##### OutputStream

> `java.io.OutputStream `抽象类是表示字节输出流的所有类的超类，将指定的字节信息写出到目的地。它定义了字节输出流的基本共性功能方法。

- `public void write(int b)` ：将指定的字节输出流。虽然参数为int类型四个字节，但是只会保留一个字节的信息写出。
- `public void write(byte[] b)`：将 b.length字节从指定的字节数组写入此输出流。  
- `public void write(byte[] b, int off, int len)` ：从指定的字节数组写入 len字节，从偏移量 off开始输出到此输出流。  
- `public void flush() ` ：刷新此输出流并强制任何缓冲的输出字节被写出。  
- `public void close()` ：关闭此输出流并释放与此流相关联的任何系统资源。  

##### FileInputStream 

> `java.io.FileInputStream `类是文件输入流，从文件中读取字节。

- `FileInputStream(File file)`： 通过打开与实际文件的连接来创建一个 FileInputStream ，该文件由文件系统中的 File对象 file命名。 
- `FileInputStream(String name)`： 通过打开与实际文件的连接来创建一个 FileInputStream ，该文件由文件系统中的路径名 name命名。

##### FileOutputStream

> `java.io.FileOutputStream `类是文件输出流，用于将数据写出到文件。

- `public FileOutputStream(File file)`：创建文件输出流，写出由指定的 File对象表示的文件。 
- `public FileOutputStream(String name)`： 创建文件输出流，指定的名称为写出文件。
- `public FileOutputStream(File file, boolean append)`：  创建文件输出流，指明是否在现有文件末尾追加内容。

##### 案例

> FileInputStream \ FileOutputStream 的使用
> 执行步骤：
> 第1步：创建读取或写出的File类的对象
> 第2步：创建输入流或输出流
> 第3步：具体的读入或写出的过程。
>      读入：read(byte[] buffer)
>      写出：write(byte[] buffer,0,len)
> 第4步：关闭流资源，避免内存泄漏

###### 复制图片

```java
/*
     * 需求：复制一份playgirl.jpg文件，命名为playgirl_copy.jpg
     *
     * */
    @Test
    public void test1(){
        //1. 创建相关的File类的对象
        FileInputStream fileInputStream = null;
        FileOutputStream fileOutputStream = null;
        try {
            File srcFile = new File("playgirl.jpg");
            File destFile = new File("playgirl_copy.jpg");

            //2. 创建相关的字节流
            fileInputStream = new FileInputStream(srcFile);
            fileOutputStream = new FileOutputStream(destFile);

            //3. 数据的读入和写出
            byte[] cbuf = new byte[1024];
            int len;
            while ((len= fileInputStream.read(cbuf)) != -1){
                fileOutputStream.write(cbuf, 0, len);
            }
            System.out.println("复制成功");
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                if (fileOutputStream != null)
                    fileOutputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            try {
                if (fileInputStream != null)
                    fileInputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

    }
```

###### 复制文本

```java
/*
     * 需求：复制一份hello.txt文件，命名为hello_copy1.txt
     *
     *  可以使用字节流实现文本文件的复制。
     * */
    @Test
    public void test2(){
        FileInputStream fileInputStream = null;
        FileOutputStream fileOutputStream = null;

        try {
            //1. 创建相关的File类的对象
            File srcFile = new File("hello.txt");
            File destFile = new File("hello_copy1.txt");

            //2. 创建相关的字节流
            fileInputStream = new FileInputStream(srcFile);
            fileOutputStream = new FileOutputStream(destFile);

            //3. 数据的读入和写出
            byte[] buff = new byte[5];
            int len;
            while ((len= fileInputStream.read(buff)) != -1){
                fileOutputStream.write(buff, 0, len);
            }
            System.out.println("复制成功");
        } catch (IOException e) {
            throw new RuntimeException(e);
        } finally {
            //4. 关闭资源
            try {
                if (fileOutputStream != null)
                    fileInputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            try {
                if (fileInputStream != null)
                    fileInputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
```

###### 读文件输出到控制台（注意乱码）

```java
    /*
     * 需求：读取hello.txt文件，将数据显示在控制台上。
     * 可能出现乱码。
     * */
    @Test
    public void test3(){
        FileInputStream fileInputStream = null;
        try {
            //1. 创建相关的File类的对象
            File file = new File("hello.txt");
            //2. 创建相关的字节流
            fileInputStream = new FileInputStream(file);
            //3. 数据的读入和写出
            byte[] buff = new byte[5];
            int len;
            while ((len=fileInputStream.read(buff)) != -1){
                String str = new String(buff, 0, len);
                System.out.print(str);
            }
            System.out.println("打印出来了");
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            //4. 关闭资源
            try {
                if (fileInputStream != null)
                    fileInputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

    }
```



### 处理流

> 说明：
>
> 1. 涉及到嵌套的多个流时，如果都显式关闭的话，需要先关闭外层的流，再关闭内层的流
> 2. 其实在开发中，只需要关闭最外层的流即可，因为在关闭外层流时，内层的流也会被关闭。

#### 缓冲流

> 4个缓冲流                   使用的方法
> 处理非文本文件的字节流：
> BufferedInputStream        read(byte[] buffer)
> BufferedOutputStream       write(byte[] buffer,0,len) 、flush()
>
> 处理文本文件的字符流：
> BufferedReader            read(char[] cBuffer) / String readLine()
> BufferedWriter            write(char[] cBuffer,0,len) / write(String )  、flush()

> 实现步骤
>
> 第1步：创建File的对象、流的对象（包括文件流、缓冲流）
> 第2步：使用缓冲流实现 读取数据 或 写出数据的过程（重点）
>     读取：int read(char[] cbuf/byte[] buffer) : 每次将数据读入到cbuf/buffer数组中，并返回读入到数组中的字符的个数
>     写出：void write(String str)/write(char[] cbuf):将str或cbuf写出到文件中
>          void write(byte[] buffer) 将byte[]写出到文件中
> 第3步：关闭资源

- `为了提高数据读写的速度`，Java API提供了带缓冲功能的流类：缓冲流。
- 缓冲流要“套接”在相应的节点流之上，根据数据操作单位可以把缓冲流分为：
  - **字节缓冲流**：`BufferedInputStream`，`BufferedOutputStream` 
  - **字符缓冲流**：`BufferedReader`，`BufferedWriter`
- 缓冲流的基本原理：在创建流对象时，内部会创建一个缓冲区数组（缺省使用`8192个字节(8Kb)`的缓冲区），通过缓冲区读写，减少系统IO次数，从而提高读写的效率。

![image-20220413002314063](Java.assets/image-20220413002314063.png)



<img src="Java.assets/image-20220514183413011.png" alt="image-20220514183413011" style="zoom:80%;" />

##### 构造器

- `public BufferedInputStream(InputStream in)` ：创建一个 新的字节型的缓冲输入流。 
- `public BufferedOutputStream(OutputStream out)`： 创建一个新的字节型的缓冲输出流。

代码举例：

```java
// 创建字节缓冲输入流
BufferedInputStream bis = new BufferedInputStream(new FileInputStream("abc.jpg"));
// 创建字节缓冲输出流
BufferedOutputStream bos = new BufferedOutputStream(new FileOutputStream("abc_copy.jpg"));
```

- `public BufferedReader(Reader in)` ：创建一个 新的字符型的缓冲输入流。 
- `public BufferedWriter(Writer out)`： 创建一个新的字符型的缓冲输出流。

代码举例：

```java
// 创建字符缓冲输入流
BufferedReader br = new BufferedReader(new FileReader("br.txt"));
// 创建字符缓冲输出流
BufferedWriter bw = new BufferedWriter(new FileWriter("bw.txt"));
```

##### 字符缓冲流特有方法

字符缓冲流的基本方法与普通字符流调用方式一致，不再阐述，我们来看它们具备的特有方法。

- BufferedReader：`public String readLine()`: 读一行文字，不包含换行符，看是否返回null 
- BufferedWriter：`public void newLine()`: 写一行行分隔符,由系统属性定义符号。

##### 案例

###### 复制图片（字节缓冲流）

```java
/*
     * 需求：使用BufferedInputStream \ BufferedOutputStream复制一个图片
     *
     * 注意：如下的操作应该使用try-catch-finally处理异常。
     * */
    @Test
    public void test1(){
        BufferedInputStream bufferedInputStream = null;
        BufferedOutputStream bufferedOutputStream = null;
        try {
            //1. 创建相关的File类的对象
            File srcFile = new File("playgirl.jpg");
            File destFile = new File("playgirl_copy1.jpg");

            //2. 创建相关的字节流、缓冲流
            FileInputStream fileInputStream = new FileInputStream(srcFile);
            FileOutputStream fileOutputStream = new FileOutputStream(destFile);

            bufferedInputStream = new BufferedInputStream(fileInputStream);
            bufferedOutputStream = new BufferedOutputStream(fileOutputStream);


            //3. 数据的读入和写出
            byte[] buf = new byte[1024];    //1kB
            int len;
            while ((len=bufferedInputStream.read(buf)) != -1){
                bufferedOutputStream.write(buf,0, len);
            }
            System.out.println("复制成功");
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            //4. 关闭资源
            //外层的流的关闭
            //由于外层流的关闭也会自动的对内层的流进行关闭操作。所以可以省略内层流的关闭。
            try {
                if (bufferedOutputStream != null)
                    bufferedOutputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            try {
                if (bufferedInputStream != null)
                    bufferedInputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
```

###### 读取文本控制台显示（字符缓冲流）

```java
    /*
     * 使用BufferedReader将dbcp_utf-8.txt中的内容显式在控制台上。
     * */
    @Test
    public void test1(){
        BufferedReader bufferedReader = null;
        try {
            File file = new File("dbcp_utf-8.txt");

            bufferedReader = new BufferedReader(new FileReader(file));

            //读取过程
            //方式一：read(char[] cBuffer)
            /*char[] cbuff = new char[1024];
            int len;
            while ((len= bufferedReader.read(cbuff)) != -1){
                //方法一：
                *//*for (int i = 0; i < len; i++) {
                    System.out.print(cbuff[i]);
                }*//*
                //方法二：
                String s = new String(cbuff, 0, len);
                System.out.println(s);
            }*/

            //方式二：readLine():每次读取一行文本中的数据。返回的字符串是不包含换行符的。
            String data;
            while ((data = bufferedReader.readLine()) != null){
                System.out.print(data + "\n");
            }
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                if (bufferedReader != null)
                    bufferedReader.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
```

###### 复制文本文件（字符缓冲流）

```java
/*
     * 使用BufferedReader和BufferedWriter实现文本文件的复制
     *
     * 注意：开发中，还是需要使用try-catch-finally来处理流的异常。
     * */
    @Test
    public void test2(){
        BufferedReader bufferedReader = null;
        BufferedWriter bufferedWriter = null;
        try {
            File srcFile = new File("dbcp_utf-8.txt");
            File destFile = new File("dbcp_utf-8_copy1.txt");

            bufferedReader = new BufferedReader(new FileReader(srcFile));
            bufferedWriter = new BufferedWriter(new FileWriter(destFile));

            char[] cbuff = new char[1024];
            String data;
            while ((data=bufferedReader.readLine()) != null){
                bufferedWriter.write(data);
                bufferedWriter.newLine();
                bufferedWriter.flush();
            }
            System.out.println("复制成功");
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                if (bufferedWriter != null)
                    bufferedWriter.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            try {
                if (bufferedReader != null)
                    bufferedReader.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

    }
```

#### 转换流

> 1. 复习
>
>    字符编码：字符、字符串、字符数组---> 字节、字节数组（从我们能看得懂的--->我们看不懂的）
>    字符解码：字节、字节数组 ---> 字符、字符串、字符数组（从我们看不懂的--->我们能看得懂的）
>
> 2. 如果希望程序在读取文本文件时，不出现乱码，需要注意什么？
>
>    解码时使用的字符集必须与当初编码时使用的字符集得相同。
>
>    拓展：解码集必须要与编码集兼容。比如：文件编码使用的是GBK，解码时使用的是utf-8。如果文件中只有abc等英文字符，此情况下
>          也不会出现乱码。因为GBK和utf-8都向下兼容了ASCII (或 ascii)
>
> 3. 转换流：
>   ① 作用：实现字节与字符之间的转换
>
>   ② API:
>   InputStreamReader:将一个输入型的字节流转换为输入型的字符流。
>   OutputStreamWriter:将一个输出型的字符流转换为输出型的字节流。
>
> 4. 关于字符集的理解
>   4.1 在存储的文件中的字符：
>   ascii:主要用来存储a、b、c等英文字符和1、2、3、常用的标点符号。每个字符占用1个字节。
>
>   iso-8859-1:了解，每个字符占用1个字节。向下兼容ascii。主要在欧洲使用，MySQL8之前默认使用的字符集
>
>   gbk:用来存储中文简体繁体、a、b、c等英文字符和1、2、3、常用的标点符号等字符。
>       ==中文字符使用2个字节存储==的。向下兼容ascii，意味着英文字符、1、2、3、标点符号仍使用1个字节。
>
>   utf-8:可以用来存储世界范围内主要的语言的所有的字符。使用1-4个不等的字节表示一个字符。
>       ==中文字符使用3个字节存储==的。向下兼容ascii，意味着英文字符、1、2、3、标点符号仍使用1个字节。
>   	传输时每次以8个位传输数据。
>
> 4.2 在内存中的字符：
>     一个字符(char)占用2个字节。在内存中使用的字符集称为Unicode字符集。
> 	因为很多时候占用空间大，所以在jdk9的时候将String底层的数组，由char[]改为了byte[]

具体来说：

<img src="Java.assets/image-20220412231533768.png" alt="image-20220412231533768" style="zoom:85%;" />



##### InputStreamReader

> 转换流`java.io.InputStreamReader`，是Reader的子类，是从字节流到字符流的桥梁。它读取字节，并使用指定的字符集将其解码为字符。它的字符集可以由名称指定，也可以接受平台的默认字符集。 

* 构造器
  * `InputStreamReader(InputStream in)`: 创建一个使用默认字符集的字符流。 
  * `InputStreamReader(InputStream in, String charsetName)`: 创建一个指定字符集的字符流。

* 举例

  ```java
  //使用默认字符集
  InputStreamReader isr1 = new InputStreamReader(new FileInputStream("in.txt"));
  //使用指定字符集
  InputStreamReader isr2 = new InputStreamReader(new FileInputStream("in.txt") , "GBK");
  ```



##### OutputStreamWriter

> 转换流`java.io.OutputStreamWriter` ，是Writer的子类，是从字符流到字节流的桥梁。使用指定的字符集将字符编码为字节。它的字符集可以由名称指定，也可以接受平台的默认字符集。 

- 构造器

  - `OutputStreamWriter(OutputStream in)`: 创建一个使用默认字符集的字符流。 
  - `OutputStreamWriter(OutputStream in,String charsetName)`: 创建一个指定字符集的字符流。

- 举例：

  ```java
  //使用默认字符集
  OutputStreamWriter isr = new OutputStreamWriter(new FileOutputStream("out.txt"));
  //使用指定的字符集
  OutputStreamWriter isr2 = new OutputStreamWriter(new FileOutputStream("out.txt") , "GBK");
  ```

##### 案例

**文本文件格式转换**

```java
    /*
     * 需求：将gbk格式的文件转换为utf-8格式的文件存储。
     * */
    @Test
    public void test4(){
        InputStreamReader inputStreamReader = null;
        OutputStreamWriter outputStreamWriter = null;
        try {
            File srcFile = new File("dbcp_gbk.txt");
            File destFile = new File("dbcp_gbk_to_utf8.txt");

            FileInputStream fileInputStream = new FileInputStream(srcFile);
            //参数2对应的是解码集，必须与dbcp_gbk.txt的编码集一致。
            inputStreamReader = new InputStreamReader(fileInputStream, "GBK");

            FileOutputStream fileOutputStream = new FileOutputStream(destFile);
            //参数2指明内存中的字符存储到文件中的字节过程中使用的编码集。
            outputStreamWriter = new OutputStreamWriter(fileOutputStream, "utf8");

            char[] cbuff = new char[1024];
            int len;
            while ((len= inputStreamReader.read(cbuff)) != -1){
                outputStreamWriter.write(cbuff, 0, len);
            }
            System.out.println("操作完成");
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                if (outputStreamWriter != null)
                    outputStreamWriter.close();
            } catch (IOException e) {
                e.printStackTrace();
            }

            try {
                if (inputStreamReader != null)
                    inputStreamReader.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
```

#### 对象流

> 作用：将内存中定义的变量（包括基本数据类型或引用数据类型）保存在文件中
>
> DataOutputStream、DataInputStream数据流能做的事，对象流也能做。
>
> 使用场景：
> 	不同进程之间通信、客户端（或浏览器端）与服务器端传输数据

> 3. 对象的序列化机制是什么
> 对象序列化机制允许把内存中的Java对象转换成平台无关的二进制流，从而允许把这种二进制流持久地保存在磁盘上，
> 或通过网络将这种二进制流传输到另一个网络节点。//当其它程序获取了这种二进制流，就可以恢复成原来的Java对象。
>
>
> 4.如下两个过程使用的流：
> 序列化过程：使用ObjectOutputStream流实现。将内存中的Java对象保存在文件中或通过网络传输出去
>
> 反序列化过程：使用ObjectInputSteam流实现。将文件中的数据或网络传输过来的数据还原为内存中的Java对象
>
>
> 5.自定义类要想实现序列化机制，需要满足：
> ① 自定义类需要实现接口：Serializable
> ② 要求自定义类声明一个全局常量： static final long serialVersionUID = 42234234L;
>    用来唯一的标识当前的类。
> ③ 要求自定义类的各个属性也必须是可序列化的。
>
> 对于基本数据类型的属性：默认就是可以序列化的
> 对于引用数据类型的属性：要求实现Serializable接口
>
> 6.注意点：
> ① 如果不声明全局常量serialVersionUID，系统会自动声明生成一个针对于当前类的serialVersionUID。
> 如果修改此类的话，会导致serialVersionUID变化，进而导致反序列化时，出现InvalidClassException异常。
> ② 类中的属性如果声明为transient或static，则不会实现序列化。

Java提供了数据流和对象流来处理这些类型的数据：

- **数据流：DataOutputStream、DataInputStream**
  - DataOutputStream：允许应用程序将基本数据类型、String类型的变量写入输出流中
  - DataInputStream：允许应用程序以与机器无关的方式从底层输入流中读取基本数据类型、String类型的变量。
- 对象流DataInputStream中的方法：

```java
  byte readByte()                short readShort()
  int readInt()                  long readLong()
  float readFloat()              double readDouble()
  char readChar()				 boolean readBoolean()					
  String readUTF()               void readFully(byte[] b)
```

- 对象流DataOutputStream中的方法：将上述的方法的read改为相应的write即可。
- 数据流的弊端：只支持Java基本数据类型和字符串的读写，而不支持其它Java对象的类型。而ObjectOutputStream和ObjectInputStream既支持Java基本数据类型的数据读写，又支持Java对象的读写

##### 对象流API

**ObjectOutputStream中的方法：**

- public void writeBoolean(boolean val)：写出一个 boolean 值。
- public void writeByte(int val)：写出一个8位字节
- public void writeShort(int val)：写出一个16位的 short 值
- public void writeChar(int val)：写出一个16位的 char 值
- public void writeInt(int val)：写出一个32位的 int 值
- public void writeLong(long val)：写出一个64位的 long 值
- public void writeFloat(float val)：写出一个32位的 float 值。
- public void writeDouble(double val)：写出一个64位的 double 值
- public void writeUTF(String str)：将表示长度信息的两个字节写入输出流，后跟字符串 s 中每个字符的 UTF-8 修改版表示形式。根据字符的值，将字符串 s 中每个字符转换成一个字节、两个字节或三个字节的字节组。注意，将 String 作为基本数据写入流中与将它作为 Object 写入流中明显不同。 如果 s 为 null，则抛出 NullPointerException。
- `public void writeObject(Object obj)`：写出一个obj对象
- public void close() ：关闭此输出流并释放与此流相关联的任何系统资源

**ObjectInputStream中的构造器：**

`public ObjectInputStream(InputStream in) `： 创建一个指定的ObjectInputStream。

```java
FileInputStream fis = new FileInputStream("game.dat");
ObjectInputStream ois = new ObjectInputStream(fis);
```

**ObjectInputStream中的方法：**

- public boolean readBoolean()：读取一个 boolean 值
- public byte readByte()：读取一个 8 位的字节
- public short readShort()：读取一个 16 位的 short 值
- public char readChar()：读取一个 16 位的 char 值
- public int readInt()：读取一个 32 位的 int 值
- public long readLong()：读取一个 64 位的 long 值
- public float readFloat()：读取一个 32 位的 float 值
- public double readDouble()：读取一个 64 位的 double 值
- public String readUTF()：读取 UTF-8 修改版格式的 String
- `public void readObject()`：读入一个obj对象
- public void close() ：关闭此输入流并释放与此流相关联的任何系统资源

##### 序列化案例

<img src="Java.assets/image-20220503123328452.png" alt="image-20220503123328452" style="zoom:67%;" />



<img src="Java.assets/3_xuliehua.jpg" style="zoom:70%;" />

**Person类**

```java
public class Person implements Serializable { //Serializable:属于一个标识接口
    String name;
    int age;

    int id;

    Account acct;

    static final long serialVersionUID = 422334254234L;

    public Person() {
    }

    public Person(String name, int age) {
        this.name = name;
        this.age = age;
    }

    public Person(String name, int age, int id) {
        this.name = name;
        this.age = age;
        this.id = id;
    }

    public Person(String name, int age, int id, Account acct) {
        this.name = name;
        this.age = age;
        this.id = id;
        this.acct = acct;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

//    @Override
//    public String toString() {
//        return "Person{" +
//                "name='" + name + '\'' +
//                ", age=" + age +
//                '}';
//    }


//    @Override
//    public String toString() {
//        return "Person{" +
//                "name='" + name + '\'' +
//                ", age=" + age +
//                ", id=" + id +
//                '}';
//    }


    @Override
    public String toString() {
        return "Person{" +
                "name='" + name + '\'' +
                ", age=" + age +
                ", id=" + id +
                ", acct=" + acct +
                '}';
    }
}

class Account implements Serializable{
    double balance;

    static final long serialVersionUID = 422234L;

    public Account(double balance) {
        this.balance = balance;
    }

    @Override
    public String toString() {
        return "Account{" +
                "balance=" + balance +
                '}';
    }
}
```

**序列化与反序列化过程**

```java
//演示自定义类的对象的序列化和反序列化过程
    //序列化过程：
    @Test
    public void test3(){
        ObjectOutputStream objectOutputStream = null;
        try {
            File file = new File("object1.dat");
            objectOutputStream = new ObjectOutputStream(new FileOutputStream(file));
            //2.写出数据即为序列化的过程
            Person tom = new Person("Tom", 12);
            objectOutputStream.writeObject(tom);
            objectOutputStream.flush();

            Person jerry = new Person("Jerry", 23, 1001, new Account(2000));
            objectOutputStream.writeObject(jerry);
            objectOutputStream.flush();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                if (objectOutputStream != null)
                    objectOutputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    //反序列化过程：
    @Test
    public void test4(){
        ObjectInputStream objectInputStream = null;
        try {
            File file = new File("object1.dat");
            objectInputStream = new ObjectInputStream(new FileInputStream(file));

            //2. 读取文件中的对象（或反序列化的过程）
            Person person = (Person) objectInputStream.readObject();
            System.out.println(person);

            Person person1 = (Person) objectInputStream.readObject();
            System.out.println(person1);
        } catch (IOException | ClassNotFoundException e) {
            e.printStackTrace();
        } finally {
            try {
                if (objectInputStream != null)
                    objectInputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

    }
```

### 其他流的使用

#### 标准输入、输出流

> System.in: 标准的输入流，默认从键盘输入
> System.out:标准的输出流，默认从显示器输出（理解为控制台输出）
>
> 通过调用如下的方法，修改输入流和输出流的位置
> `setIn(InputStream is)`
> `setOut(PrintStream ps)`

> 注：
>
> System类中这三个常量对象的声明：
>
> ```java
> public final static InputStream in = null;
> public final static PrintStream out = null;
> public final static PrintStream err = null;
> ```
>
> 既是常量，为何还能修改？
> 	final声明的常量，表示在Java的语法体系中它们的值是不能修改的，而这三个常量对象的值是由C/C++等系统函数进行初始化和修改值的，所以它们故意没有用大写，也有set方法。

#### 打印流

- 实现将基本数据类型的数据格式转化为字符串输出。

- 打印流：`PrintStream`和`PrintWriter`

  - 提供了一系列重载的print()和println()方法，用于多种数据类型的输出

    ![image-20220131021502089](Java.assets/image-20220131021502089.png)

    ![image-20220131021528397](Java.assets/image-20220131021528397.png)

  - PrintStream和PrintWriter的输出不会抛出IOException异常

  - PrintStream和PrintWriter有自动flush功能

  - PrintStream 打印的所有字符都使用平台的默认字符编码转换为字节。在需要写入字符而不是写入字节的情况下，应该使用 PrintWriter 类。

  - System.out返回的是PrintStream的实例

- 构造器

  - PrintStream(File file) ：创建具有指定文件且不带自动行刷新的新打印流。 
  - PrintStream(File file, String csn)：创建具有指定文件名称和字符集且不带自动行刷新的新打印流。 
  - PrintStream(OutputStream out) ：创建新的打印流。 
  - PrintStream(OutputStream out, boolean autoFlush)：创建新的打印流。 autoFlush如果为 true，则每当写入 byte 数组、调用其中一个 println 方法或写入换行符或字节 ('\n') 时都会刷新输出缓冲区。
  - PrintStream(OutputStream out, boolean autoFlush, String encoding) ：创建新的打印流。 
  - PrintStream(String fileName)：创建具有指定文件名称且不带自动行刷新的新打印流。 
  - PrintStream(String fileName, String csn) ：创建具有指定文件名称和字符集且不带自动行刷新的新打印流。

- 案例

  ```java
  /*修改标准输出流*/
      @Test
      public void test2(){
          PrintStream printStream = null;
          try {
              printStream = new PrintStream("io.txt");
              printStream.println("hello");
              printStream.println(1);
              printStream.println(1.5);
  
              System.setOut(printStream);
              System.out.println("你好，修改默认的输出流");
          } catch (FileNotFoundException e) {
              e.printStackTrace();
          } finally {
              if (printStream != null)
                  printStream.close();
          }
      }
      
      @Test
      public void test3(){
          PrintStream printStream = null;
          try {
              FileOutputStream fileOutputStream = new FileOutputStream(new File("D:\\tmp\\test.txt"));
              printStream = new PrintStream(fileOutputStream, true);
              System.setOut(printStream);
              for (int i = 0; i < 255; i++) {// 输出ASCII字符
                  System.out.print((char) i);
                  if (i % 50 == 0)// 每50个数据一行
                      System.out.println();
              }
          } catch (FileNotFoundException e) {
              e.printStackTrace();
          } finally {
              if (printStream != null)
                  printStream.close();
          }
      }
  ```

  

#### Scanner类

构造方法

- Scanner(File source) ：构造一个新的 Scanner，它生成的值是从指定文件扫描的。 
- Scanner(File source, String charsetName) ：构造一个新的 Scanner，它生成的值是从指定文件扫描的。 
- Scanner(InputStream source) ：构造一个新的 Scanner，它生成的值是从指定的输入流扫描的。 
- Scanner(InputStream source, String charsetName) ：构造一个新的 Scanner，它生成的值是从指定的输入流扫描的。

常用方法：

- boolean hasNextXxx()： 如果通过使用nextXxx()方法，此扫描器输入信息中的下一个标记可以解释为默认基数中的一个 Xxx 值，则返回 true。
- Xxx nextXxx()： 将输入信息的下一个标记扫描为一个Xxx

#### 案例

##### 控制台输入转大写

```java
/*
     * 从键盘输入字符串，要求将读取到的整行字符串转成大写输出。
     * 然后继续进行输入操作，直至当输入“e”或者“exit”时，退出程序。
     * */
    @Test
    public void test1(){
        System.out.println("请输入信息(退出输入e或exit):");
        // 把"标准"输入流(键盘输入)这个字节流包装成字符流,再包装成缓冲流
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(System.in));
        String s = null;
        try {
            while ((s= bufferedReader.readLine()) != null){
                if ("e".equalsIgnoreCase(s) || "exit".equalsIgnoreCase(s)){
                    System.out.println("安全退出");
                    break;
                }
                //将读取到的整行字符串转成大写输出
                System.out.println("---->" + s.toUpperCase());
                System.out.println("继续输入信息");
            }
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                if (bufferedReader != null)
                    bufferedReader.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
```

##### 自定义日志类

Logger类

```java
public class Logger {
    /*
    记录日志的方法。
    */
    public static void log(String msg){
        try {
            // 指向一个日志文件
            PrintStream printStream = new PrintStream(new FileOutputStream("log.txt", true));
            // 改变输出方向
            System.setOut(printStream);
            // 日期当前时间
            Date nowTime = new Date();
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss SSS");
            String strTime = simpleDateFormat.format(nowTime);

            System.out.println(strTime + ":" + msg);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }

    }
}
```

**测试**

```java
@Test
    public void test4(){
        //测试工具类是否好用
        Logger.log("调用了System类的gc()方法，建议启动垃圾回收");
        Logger.log("调用了TeamView的addMember()方法");
        Logger.log("用户尝试进行登录，验证失败");
    }
```

## 网络编程

> [<font color="violet">网络编程.xmind</font>](./相关资料/Xmind/相关API/网络编程/网络编程.xmind)

### TCP握手与挥手

#### 三次握手

- 第一次握手，客户端向服务器端发起TCP连接的请求
- 第二次握手，服务器端发送针对客户端TCP连接请求的确认
- 第三次握手，客户端发送确认的确认

<img src="Java.assets/image-20220415010105484.png" alt="image-20220415010105484" style="zoom:80%;" />

#### 四次挥手

TCP协议中，在发送数据结束后，释放连接时需要经过四次挥手。

- 第一次挥手：客户端向服务器端提出结束连接，`让服务器做最后的准备工作`。此时，客户端处于半关闭状态，即表示不再向服务器发送数据了，但是还可以接受数据。
- 第二次挥手：服务器接收到客户端释放连接的请求后，`会将最后的数据发给客户端`。并告知上层的应用进程不再接收数据。
- 第三次挥手：服务器发送完数据后，会给客户端`发送一个释放连接的报文`。那么客户端接收后就知道可以正式释放连接了。
- 第四次挥手：客户端接收到服务器最后的释放连接报文后，要`回复一个彻底断开的报文`。这样服务器收到后才会彻底释放连接。这里客户端，发送完最后的报文后，会等待2MSL，因为有可能服务器没有收到最后的报文，那么服务器迟迟没收到，就会再次给客户端发送释放连接的报文，此时客户端在等待时间范围内接收到，会重新发送最后的报文，并重新计时。如果等待2MSL后，没有收到，那么彻底断开。

<img src="Java.assets/image-20220415010205891.png" alt="image-20220415010205891" style="zoom:80%;" />

### 通信模型

Java语言的基于套接字TCP编程分为服务端编程和客户端编程，其通信模型如图所示：

<img src="Java.assets/image-20220514172833216.png" alt="image-20220514172833216" style="zoom:67%;" />



### 网络编程API

> ip + 端口号
>
> Socket分类：
>
> - 流套接字（stream socket）：使用TCP提供可依赖的字节流服务
>   - ServerSocket：此类实现TCP服务器套接字。服务器套接字等待请求通过网络传入。
>   - Socket：此类实现客户端套接字（也可以就叫“套接字”）。套接字是两台机器间通信的端点。
> - 数据报套接字（datagram socket）：使用UDP提供“尽力而为”的数据报服务
>   - DatagramSocket：此类表示用来发送和接收UDP数据报包的套接字

#### InetAddress

> InetAddress类主要表示IP地址，两个子类：Inet4Address、Inet6Address。
>

InetAddress 类没有提供公共的构造器，而是提供 了 如下几个 静态方法来获取InetAddress 实例

- public static InetAddress getLocalHost()
- public static InetAddress getByName(String host)
- public static InetAddress getByAddress(byte[] addr)

InetAddress 提供了如下几个常用的方法

- public String getHostAddress() ：返回 IP 地址字符串（以文本表现形式）
- public String getHostName() ：获取此 IP 地址的主机名
- public boolean isReachable(int timeout)：测试是否可以达到该地址

```java
    public static void main(String[] args) {
        try {
            //1. 实例化
            //getByName(String host)：获取指定ip对应的InetAddress的实例
            InetAddress inet1 = InetAddress.getByName("192.168.254.1");
            System.out.println(inet1);  //  /192.168.254.1

            InetAddress inet2 = InetAddress.getByName("www.mi.com");
            System.out.println(inet2);  //   www.mi.com/61.243.16.24

            //getLocalHost():获取本地ip对应的InetAddress的实例
            InetAddress inet3 = InetAddress.getLocalHost();
            System.out.println(inet3);  //      DESKTOP-HR0C2EG/192.168.75.1

            InetAddress inet4 = InetAddress.getByName("127.0.0.1");
            System.out.println(inet4);  //      /127.0.0.1

            //2.两个常用的方法
            System.out.println(inet1.getHostName());    //DESKTOP-HR0C2EG
            System.out.println(inet1.getHostAddress()); // 192.168.254.1

            System.out.println(inet2.getHostName());   //  www.mi.com
            System.out.println(inet2.getHostAddress());//   61.243.16.24
        } catch (UnknownHostException e) {
            e.printStackTrace();
        }
    }
```

#### Socket

**Socket类的常用构造方法**：

- public Socket(InetAddress address,int port)：创建一个流套接字并将其连接到指定 IP 地址的指定端口号。
- public Socket(String host,int port)：创建一个流套接字并将其连接到指定主机上的指定端口号。

**Socket类的常用方法**：

- public InputStream getInputStream()：返回此套接字的输入流，可以用于接收消息
- public OutputStream getOutputStream()：返回此套接字的输出流，可以用于发送消息
- public InetAddress getInetAddress()：此套接字连接到的远程 IP 地址；如果套接字是未连接的，则返回 null。
- public InetAddress getLocalAddress()：获取套接字绑定的本地地址。
- public int getPort()：此套接字连接到的远程端口号；如果尚未连接套接字，则返回 0。
- public int getLocalPort()：返回此套接字绑定到的本地端口。如果尚未绑定套接字，则返回 -1。
- public void close()：关闭此套接字。套接字被关闭后，便不可在以后的网络连接中使用（即无法重新连接或重新绑定）。需要创建新的套接字对象。 关闭此套接字也将会关闭该套接字的 InputStream 和 OutputStream。 
- public void shutdownInput()：如果在套接字上调用 shutdownInput() 后从套接字输入流读取内容，则流将返回 EOF（文件结束符）。 即不能在从此套接字的输入流中接收任何数据。
- public void shutdownOutput()：禁用此套接字的输出流。对于 TCP 套接字，任何以前写入的数据都将被发送，并且后跟 TCP 的正常连接终止序列。 如果在套接字上调用 shutdownOutput() 后写入套接字输出流，则该流将抛出 IOException。 即不能通过此套接字的输出流发送任何数据。

**注意：**先后调用Socket的shutdownInput()和shutdownOutput()方法，仅仅关闭了输入流和输出流，并不等于调用Socket的close()方法。在通信结束后，仍然要调用Scoket的close()方法，因为只有该方法才会释放Socket占用的资源，比如占用的本地端口号等。

#### ServerSocket

**ServerSocket类的构造方法：**

- ServerSocket(int port) ：创建绑定到特定端口的服务器套接字。

**ServerSocket类的常用方法：**

- Socket accept()：侦听并接受到此套接字的连接。

#### DatagramSocket

**DatagramSocket 类的常用方法：**

- public DatagramSocket(int port)创建数据报套接字并将其绑定到本地主机上的指定端口。套接字将被绑定到通配符地址，IP 地址由内核来选择。
- public DatagramSocket(int port,InetAddress laddr)创建数据报套接字，将其绑定到指定的本地地址。本地端口必须在 0 到 65535 之间（包括两者）。如果 IP 地址为 0.0.0.0，套接字将被绑定到通配符地址，IP 地址由内核选择。 
- public void close()关闭此数据报套接字。 
- public void send(DatagramPacket p)从此套接字发送数据报包。DatagramPacket 包含的信息指示：将要发送的数据、其长度、远程主机的 IP 地址和远程主机的端口号。 
- public void receive(DatagramPacket p)从此套接字接收数据报包。当此方法返回时，DatagramPacket 的缓冲区填充了接收的数据。数据报包也包含发送方的 IP 地址和发送方机器上的端口号。 此方法在接收到数据报前一直阻塞。数据报包对象的 length 字段包含所接收信息的长度。如果信息比包的长度长，该信息将被截短。 
- public InetAddress getLocalAddress()获取套接字绑定的本地地址。
- public int getLocalPort()返回此套接字绑定的本地主机上的端口号。 
- public InetAddress getInetAddress()返回此套接字连接的地址。如果套接字未连接，则返回 null。
- public int getPort()返回此套接字的端口。如果套接字未连接，则返回 -1。

#### DatagramPacket类

**DatagramPacket类的常用方法：**

- public DatagramPacket(byte[] buf,int length)构造 DatagramPacket，用来接收长度为 length 的数据包。 length 参数必须小于等于 buf.length。
- public DatagramPacket(byte[] buf,int length,InetAddress address,int port)构造数据报包，用来将长度为 length 的包发送到指定主机上的指定端口号。length 参数必须小于等于 buf.length。
- public InetAddress getAddress()返回某台机器的 IP 地址，此数据报将要发往该机器或者是从该机器接收到的。
- public int getPort()返回某台远程主机的端口号，此数据报将要发往该主机或者是从该主机接收到的。
- `public byte[] getData()`返回数据缓冲区。接收到的或将要发送的数据从缓冲区中的偏移量 offset 处开始，持续 length 长度。
- `public int getLength()`返回将要发送或接收到的数据的长度。

#### URL

> 一个URL对象生成后，其属性是不能被改变的，但可以通过它给定的方法来获取这些属性：

- public String getProtocol( )   获取该URL的协议名
- public String getHost( )      获取该URL的主机名
- public String getPort( )      获取该URL的端口号
- public String getPath( )      获取该URL的文件路径
- public String getFile( )       获取该URL的文件名
- public String getQuery(  )    获取该URL的查询名

```java
try {
            String str = "http://localhost:8080/test/pic.jpg?name=Tom";

            URL url = new URL(str);
          /*
            * - public String getProtocol( )   获取该URL的协议名
            - public String getHost( )      获取该URL的主机名
            - public String getPort( )      获取该URL的端口号
            - public String getPath( )      获取该URL的文件路径
            - public String getFile( )       获取该URL的文件名
            - public String getQuery(  )    获取该URL的查询名
            * */

            System.out.println(url.getProtocol());      //http
            System.out.println(url.getHost());      //localhost
            System.out.println(url.getPort());      //8080
            System.out.println(url.getPath());      ///test/pic.jpg
            System.out.println(url.getFile());      ///test/pic.jpg?name=Tom
            System.out.println(url.getQuery());     //name=Tom
} catch (MalformedURLException e) {
    e.printStackTrace();
}
```

#### 针对HTTP协议的URLConnection类

- URL的方法 openStream()：能从网络上读取数据
- 若希望输出数据，例如向服务器端的 CGI （公共网关接口-Common Gateway Interface-的简称，是用户浏览器和服务器端的应用程序进行连接的接口）程序发送一些数据，则必须先与URL建立连接，然后才能对其进行读写，此时需要使用 URLConnection 。
- URLConnection：表示到URL所引用的远程对象的连接。当与一个URL建立连接时，首先要在一个 URL 对象上通过方法 openConnection() 生成对应的 URLConnection 对象。如果连接过程失败，将产生IOException. 
  - URL netchinaren = new URL ("http://localhost:8080/test/pic.jpg?name=Tom"); 
  - URLConnectonn u = netchinaren.openConnection( ); 
- 通过URLConnection对象获取的输入流和输出流，即可以与现有的CGI程序进行交互。
  - public Object getContent( ) throws IOException
  - public int getContentLength( )
  - public String getContentType( )
  - public long getDate( )
  - public long getLastModified( )
  - **public InputStream getInputStream ( ) throws IOException**
  - public OutputSteram getOutputStream( )throws IOException

#### 案例

> 注：在任意一段要显示接收来的文字时，需要使用`ByteArrayOutputStream`类，防止出现字符被切割开而导致乱码问题。

##### TCP客户端、服务器

```java
    @Test
    public void client(){
        FileInputStream fileInputStream = null;
        Socket socket = null;
        OutputStream outputStream = null;
        InputStream inputStream = null;
        try {
            //1. 创建Socket
            //指明对方（即为服务器端）的ip地址和端口号
            int port = 9090;
            InetAddress inetAddress = InetAddress.getByName("127.0.0.1");
            //2. 创建File的实例、FileInputStream的实例
            File file = new File("pic.jpg");
            fileInputStream = new FileInputStream(file);
            //3. 通过Socket，获取输出流
            socket = new Socket(inetAddress, port);
            //4. 读写数据
            outputStream = socket.getOutputStream();
            byte[] buffer = new byte[1024];
            int len;
            while ((len= fileInputStream.read(buffer)) != -1){
                outputStream.write(buffer, 0, len);
            }
            System.out.println("数据发送成功");
            //客户端表明不再继续发送数据
            socket.shutdownOutput();
            //5. 接收来自于服务器端的数据
            inputStream = socket.getInputStream();
            byte[] buffer1 = new byte[1024];
            int len1;
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            while ((len1 = inputStream.read(buffer1)) != -1){
                byteArrayOutputStream.write(buffer1,0,len1);
            }
            System.out.println(byteArrayOutputStream);
            byteArrayOutputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            //6. 关闭Socket和相关的流

            try {
                if (inputStream != null)
                    inputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            try {
                if (fileInputStream != null)
                    fileInputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            try {
                if (outputStream != null)
                    outputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            try {
                if (socket != null)
                    socket.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    @Test
    public void server(){
        ServerSocket serverSocket = null;
        Socket socket = null;
        InputStream inputStream = null;
        FileOutputStream fileOutputStream = null;
        OutputStream outputStream = null;
        try {
            //1. 创建ServerSocket
            int port = 9090;
            serverSocket = new ServerSocket(port);
            //2. 接收来自于客户端的socket:accept()
            socket = serverSocket.accept();
            //3. 通过Socket获取一个输入流
            inputStream = socket.getInputStream();
            //4. 创建File类的实例、FileOutputStream的实例
            File file = new File("pic_copy2.jpg");
            fileOutputStream = new FileOutputStream(file);
            //5. 读写过程
            byte[] buffer = new byte[1024];
            int len;
            while ((len=inputStream.read(buffer)) != -1){
                fileOutputStream.write(buffer,0,len);
            }
            System.out.println("数据接收完毕");
            //6. 服务端发送数据给客户端
            outputStream = socket.getOutputStream();
            outputStream.write("你的图片很漂亮，我接收到了".getBytes());
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            //7. 关闭相关的Socket和流
            try {
                if (outputStream != null)
                    outputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            try {
                if (fileOutputStream != null)
                    fileOutputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            try {
                if (inputStream !=  null)
                    inputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            try {
                if (socket != null)
                    socket.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            try {
                if (serverSocket != null)
                    serverSocket.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
```

##### 聊天室

![1692780343956](Java.assets/1692780343956.png)

**ChatServerTest**

```java
public class ChatServerTest {
    //这个集合用来存储所有在线的客户端
    static ArrayList<Socket> online = new ArrayList<Socket>();

    public static void main(String[] args) throws IOException {
        //1、启动服务器，绑定端口号
        ServerSocket serverSocket = new ServerSocket(8989);

        //2、接收n多的客户端同时连接
        while (true){
            Socket socket = serverSocket.accept();  //阻塞式的方法

            online.add(socket); //把新连接的客户端添加到online列表中

            //主要负责获取当前socket中的数据，并分发给当前聊天室的所有的客户端。
            MessageHandler messageHandler = new MessageHandler(socket);
            messageHandler.start();

        }
    }

    static class MessageHandler extends Thread{
        private Socket socket;
        private String ip;

        public MessageHandler(Socket socket) {
            this.socket = socket;
        }

        @Override
        public void run() {
            try {
                ip = socket.getInetAddress().getHostAddress();

                //插入：给其他客户端转发“我上线了”
                sendToOther(ip + "上线了。");

                //(1)接收该客户端的发送的消息
                InputStream inputStream = socket.getInputStream();
                InputStreamReader inputStreamReader = new InputStreamReader(inputStream);
                BufferedReader bufferedReader = new BufferedReader(inputStreamReader);

                String str;
                //每个客户端都会在此停留
                while ((str= bufferedReader.readLine()) != null){
                    //(2)给其他在线客户端转发
                    sendToOther(ip + ":" + str);
                }

                sendToOther(ip + "下线了");
            } catch (IOException e) {
                try {
                    sendToOther(ip + "掉线了");
                } catch (IOException e1) {
                    e1.printStackTrace();
                }
            } finally {
                //从在线人员中移除我
                online.remove(socket);
            }

        }

        //封装一个方法：给其他客户端转发xxx消息
        public void sendToOther(String message) throws IOException {
            //遍历所有的在线客户端，一一转发
            for (Socket on : online) {
                OutputStream outputStream = on.getOutputStream();
                //为什么用PrintStream？目的用它的println方法，按行打印
                PrintStream printStream = new PrintStream(outputStream);
                printStream.println(message);
            }
        }

    }




}
```

**ChatClientTest**

```java
public class ChatClientTest {
    public static void main(String[] args) throws IOException, InterruptedException {
        //1、连接服务器
        Socket socket = new Socket("127.0.0.1", 8989);
        //2、开启两个线程
        //(1)一个线程负责看别人聊，即接收服务器转发的消息
        Receive receive = new Receive(socket);
        receive.start();
        //(2)一个线程负责发送自己的话
        Send send = new Send(socket);
        send.start();

        send.join();    //发送完，才能算时结束

        socket.close();

    }
}

class Send extends Thread{
    private Socket socket;

    public Send(Socket socket) {
        this.socket = socket;
    }

    @Override
    public void run() {
        try {
            Scanner scanner = new Scanner(System.in);
            OutputStream outputStream = socket.getOutputStream();
            //按行打印
            PrintStream printStream = new PrintStream(outputStream);

            //从键盘不断的输入自己的话，给服务器发送，由服务器给其他人转发
            while (true){
                System.out.println("自己的话：");
                String line = scanner.nextLine();   //阻塞式的方法
                if ("bye".equals(line))
                    break;
                printStream.println(line);
            }

            scanner.close();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}


class Receive extends Thread{
    private Socket socket;  //服务端的socket

    public Receive(Socket socket) {
        this.socket = socket;
    }

    @Override
    public void run() {
        try {
            InputStream inputStream = socket.getInputStream();
            Scanner scanner = new Scanner(inputStream);
            while (scanner.hasNextLine()){
                String line = scanner.nextLine();
                System.out.println(line);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
```

##### UDP案例

```java
 //发送端
    @Test
    public void sender(){
        DatagramSocket datagramSocket = null;
        try {
            //1. 创建DatagramSocket的实例
            datagramSocket = new DatagramSocket();

            //2. 将数据、目的地的ip，目的地的端口号都封装在DatagramPacket数据报中
            InetAddress inetAddress = InetAddress.getByName("127.0.0.1");
            int port = 9090;
            byte[] bytes = "我是发送端".getBytes("utf-8");
            DatagramPacket packet = new DatagramPacket(bytes, 0, bytes.length, inetAddress, port);

            //发送数据
            datagramSocket.send(packet);
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (datagramSocket !=  null)
                datagramSocket.close();
        }

    }

    @Test
    public void receiver(){
        DatagramSocket datagramSocket = null;
        try {
            //1. 创建DatagramSocket的实例
            int port = 9090;
            datagramSocket = new DatagramSocket(port);

            //2. 创建数据报的对象，用于接收发送端发送过来的数据
            byte[] buffer = new byte[1024 * 64];
            DatagramPacket packet = new DatagramPacket(buffer, 0, buffer.length);

            //3. 接收数据
            datagramSocket.receive(packet);

            //4.获取数据，并打印到控制台上
            String s = new String(packet.getData(), 0, packet.getLength());
            System.out.println(s);
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (datagramSocket != null)
                datagramSocket.close();
        }

    }
```

##### URL下载文件

```java
    /*
     * 需求：将URL代表的资源下载到本地
     * */
    @Test
    public void test1(){
        InputStream inputStream = null;
        FileOutputStream fileOutputStream = null;
        try {
            //1. 获取URL实例
            URL url = new URL("http://localhost:8080/test/pic.jpg?name=Tom");
            //2. 建立与服务器端的连接
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            //3. 获取输入流、创建输出流
            inputStream = httpURLConnection.getInputStream();
            File file = new File("dest.jpg");
            fileOutputStream = new FileOutputStream(file);
            //4. 读写数据
            byte[] buffer = new byte[1024];
            int len;
            while ((len=inputStream.read(buffer)) != -1){
                fileOutputStream.write(buffer, 0, len);
            }
            System.out.println("文件下载完成");
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            //5. 关闭资源
            try {
                if (fileOutputStream != null)
                    fileOutputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            try {
                if (inputStream != null)
                    inputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
```

## 反射机制

> [<font color="violet">反射机制.xmind</font>](./相关资料/Xmind/相关API/反射/反射机制.xmind)

### 反射概述

> Java程序中，所有的对象都有两种类型：`编译时类型`和`运行时类型`，而很多时候对象的编译时类型和运行时类型`不一致`。
> 		最典型的就是多态
>
> 可以通过反射创建对应类的对象、使用属性、调用方法
> 		最关键的是：==我们可以通过反射调用没有访问权限的属性、方法和构造器==
>
> 因为反射体现了动态性（可以在运行时动态的获取对象所属的类，动态的调用相关的方法），所以我们在设计框架的时候，
>   会大量的使用反射。意味着，如果大家需要学习框架源码，那么就需要学习反射。
> 	框架 = 注解 + 反射 + 设计模式

```java
 /*使用反射之前可以执行的操作*/
    @Test
    public void test1(){
        //1.创建Person类的实例
        //        public Person()
        Person person = new Person();
        System.out.println(person);
        
        //2.调用属性
        //public int age;
        person.age = 10;
        System.out.println(person.age);

        //3.调用方法
        //public void show()
        person.show();
    }

    /*使用反射完成上述的操作*/
    @Test
    public void test2() throws Exception{
        //1.创建Person类的实例
//        public Person()
        Class<Person> clazz = Person.class;
        Person person = clazz.newInstance();
        System.out.println(person);

        //2.调用属性
        //public int age;
        Field ageFiled = clazz.getField("age");
        ageFiled.set(person,10);
        System.out.println(ageFiled.get(person));

        //3.调用方法
        //public void show()
        Method showMethod = clazz.getMethod("show");
        showMethod.invoke(person);
    }

    /*可以通过反射的方式，调用Person类中私有的结构  ---> 暴力反射*/
    @Test
    public void test3() throws Exception{
        //1. 调用私有的构造器，创建Person的实例
        //private Person(String name, int age)
        Class<Person> personClass = Person.class;
        Constructor<Person> declaredConstructor = personClass.getDeclaredConstructor(String.class, int.class);
        declaredConstructor.setAccessible(true);
        Person person = declaredConstructor.newInstance("Tom", 12);
        System.out.println(person);

        //2. 调用私有的属性
        //private String name;
        Field nameDeclaredField = personClass.getDeclaredField("name");
        nameDeclaredField.setAccessible(true);
        nameDeclaredField.set(person, "Jerry");
        System.out.println(nameDeclaredField.get(person));

        //3. 调用私有的方法
        //private String showNation(String nation)
        Method showNationMethod = personClass.getDeclaredMethod("showNation", String.class);
        showNationMethod.setAccessible(true);
        Object info = showNationMethod.invoke(person, "CHN");
        System.out.println(info);

    }
```

### Class类

> Reflection（反射）是被视为`动态语言`的关键，反射机制允许程序在`运行期间`借助于Reflection API取得任何类的内部信息，并能直接操作任意对象的内部属性及方法。
>
> 加载完类之后，在堆内存的方法区中就产生了一个Class类型的对象（一个类只有一个Class对象），这个对象就包含了完整的类的结构信息。我们可以通过这个对象看到类的结构。

<img src="Java.assets/image-20220417161529285.png" alt="image-20220417161529285" style="zoom:80%;" />

**从内存加载上看反射：**

![image-20220524101448625](Java.assets/image-20220524101448625.png)

#### Class类的理解

> （如下以Java类的加载为例说明）
> 针对于编写好的.java源文件进行编译(使用javac.exe)，会生成一个或多个.class字节码文件。接着，我们使用
> java.exe命令对指定的.class文件进行解释运行。这个解释运行的过程中，我们需要将.class字节码文件加载(使用类的加载器)
> 到内存中(存放在方法区)。加载到内存中的.class文件对应的结构即为Class的一个实例。
>
> 比如：加载到内存中的Person类或String类或User类，都作为Class的一个一个的实例
>
> ```java
> Class clazz1 = Person.class;  //运行时类
> Class clazz2 = String.class;
> Class clazz3 = User.class;
> Class clazz4 = Comparable.class;
> ```
>
> 说明：运行时类在内存中会缓存起来，在整个执行期间，只会加载一次。

> Class实例的结构可以指向Java的所有类型
>
> （1）class：外部类，成员(成员内部类，静态内部类)，局部内部类，匿名内部类
> （2）interface：接口
> （3）[]：数组
> （4）enum：枚举
> （5）annotation：注解@interface
> （6）primitive type：基本数据类型
> （7）void
>
> ```java
>     @Test
>     public void test2(){
>         Class<Object> objectClass = Object.class;
>         Class<Comparable> comparableClass = Comparable.class;
>         Class<String[]> aClass = String[].class;
>         Class<int[][]> aClass1 = int[][].class;
>         Class<ElementType> elementTypeClass = ElementType.class;
>         Class<Override> overrideClass = Override.class;
>         Class<Integer> integerClass = int.class;
>         Class<Void> voidClass = void.class;
>         Class<Class> classClass = Class.class;
> 
>         int[] a = new int[10];
>         int[] b = new int[100];
>         Class<? extends int[]> aC = a.getClass();
>         Class<? extends int[]> bC = b.getClass();
> 
>         // 只要元素类型与维度一样，就是同一个Class
>         System.out.println(aC == bC);
>     }
> ```
>
> 

#### 获取Class实例的几种方式

```java
    /*获取Class实例的几种方式)*/
    @Test
    public void test1(){
        //1.调用运行时类的静态属性：class
        Class<User> userClass = User.class;
        System.out.println(userClass);

        //2. 调用运行时类的对象的getClass()
        User user = new User();
        Class<? extends User> userClass1 = user.getClass();
        System.out.println(userClass1);
        Class<?> userClass3 = null;

        try {
            //3. 调用Class的静态方法forName(String className)
            String className = "com.atguigu02._class.User"; //全类名
            userClass3 = Class.forName(className);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        System.out.println(userClass == userClass1);
        System.out.println(userClass == userClass3);

        try {
            //4. 使用类的加载器的方式 (了解)
            Class<?> userClass4 = ClassLoader.getSystemClassLoader().loadClass("com.atguigu02._class.User");
            System.out.println(userClass == userClass4);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
```

### 类的加载(JDK8)

#### 类的加载过程

> 过程1：类的装载(loading)
> 将类的class文件读入内存，并为之创建一个java.lang.Class对象。此过程由类加载器完成
>
> 过程2：链接(linking)
> 	验证(Verify):确保加载的类信息符合JVM规范，例如：以`cafebabe`开头，没有安全方面的问题。
> 	准备(Prepare):正式为类变量（static）分配内存并设置类变量默认初始值的阶段，这些内存都将在方法区中进行分配。
> 	解析(Resolve):虚拟机常量池内的符号引用（常量名）替换为直接引用（地址）的过程。
>
> 过程3：初始化(initialization)
> 	执行类构造器`<clinit>()`方法的过程。
> 	类构造器`<clinit>()`方法是由编译期自动收集类中所有类变量的赋值动作和静态代码块中的语句合并产生的。
> 	注：虚拟机会保证一个`类的<clinit>()方法`在多线程环境中被正确加锁和同步。

**类的生命周期**

类在内存中完整的生命周期：加载-->使用-->卸载。其中加载过程又分为：装载、链接、初始化三个阶段。

![image-20220417173459849](Java.assets/image-20220417173459849.png)

**类的加载过程**

当程序主动使用某个类时，如果该类还未被加载到内存中，系统会通过加载、链接、初始化三个步骤来对该类进行初始化。如果没有意外，JVM将会连续完成这三个步骤，所以有时也把这三个步骤统称为类加载。

<img src="Java.assets/image-20220417171411631.png" alt="image-20220417171411631" style="zoom: 50%;" />

#### 类加载器

> 注：`.class`文件十六进制下以`cafebabe`开头

> BootstrapClassLoader:引导类加载器、启动类加载器
> 		使用C/C++语言编写的，不能通过Java代码获取其实例
> 		负责加载Java的核心库（JAVA_HOME/jre/lib/rt.jar或sun.boot.class.path路径下的内容）
>
> 继承于ClassLoader的类加载器
> 		①ExtensionClassLoader:扩展类加载器
>             负责加载从java.ext.dirs系统属性所指定的目录中加载类库，或从JDK的安装目录的jre/lib/ext子目录下加载类库
> 		②SystemClassLoader/ApplicationClassLoader:系统类加载器、应用程序类加载器
>             我们自定义的类，默认使用的类的加载器。
> 		③用户自定义类的加载器
>             实现应用的隔离（同一个类在一个应用程序中可以加载多份）；数据的加密。
> 			比如版本更新后，想要将不同版本的jar包都加载进来
>
> <img src="Java.assets/image-20220417173819953.png" alt="image-20220417173819953" style="zoom:80%;" />
>
> 双亲委派机制！可以避免恶意替换，如替换掉`java.lang.String`

> 注：以上类的加载器不存在继承关系
>
> ```java
> class ClassLoader{
>     ClassLoader parent;
> 
>     public ClassLoader(ClassLoader parent){
>         this.parent = parent;
>     }
> }
> 
> 
> //测试代码：
> ClassLoader loader0 = new ClassLoader();
> ClassLoader loader1 = new ClassLoader(loader0);
> 我们就把loader0叫做loader1的父类加载器。
> ```
>
> ![image-20220417174032702](Java.assets/image-20220417174032702.png)

**获取类加载器**

```java
    /*
     * 在jdk8中执行如下的代码：
     * */
    @Test
    public void test1(){
        //获取系统类加载器
        ClassLoader classLoader1 = ClassLoader.getSystemClassLoader();
        System.out.println(classLoader1);   //sun.misc.Launcher$AppClassLoader@18b4aac2

        //获取扩展类加载器
        ClassLoader classLoader2 = classLoader1.getParent();
        System.out.println(classLoader2);   //sun.misc.Launcher$ExtClassLoader@5caf905d

        //获取引导类加载器:失败
        ClassLoader classLoader3 = classLoader2.getParent();
        System.out.println(classLoader3);   //null
    }

    @Test
    public void test2(){
        //用户自定义的类使用的是系统类加载器加载的。
        Class<User> userClass = User.class;
        ClassLoader classLoader = userClass.getClassLoader();
        System.out.println(classLoader);    //sun.misc.Launcher$AppClassLoader@18b4aac2

        try {
            //对于Java的核心api使用引导类加载器加载
            Class<?> aClass = Class.forName("com.atguigu02._class.ClassLoaderTest");
            ClassLoader classLoader1 = aClass.getClassLoader();
            System.out.println(classLoader1);   //sun.misc.Launcher$AppClassLoader@18b4aac2
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
```

#### 代码层面两种加载方式的不同

```java
    //执行一次静态结构
    @Test
    public void test1() throws ClassNotFoundException {
        String className = "com.atguigu04.other.interview.Order";
        Class.forName(className);
//        Class.forName(className);
    }

    //延迟执行静态结构，真正使用时才会加载静态结构
    @Test
    public void test2() throws ClassNotFoundException {
        String className = "com.atguigu04.other.interview.Order";
        ClassLoader.getSystemClassLoader().loadClass(className);
    }
```



### 反射的基本应用

> 1. （掌握）反射的应用1：创建运行时类的对象
> 1.1 如何实现？
> 	通过Class的实例调用newInstance()方法即可。
>
> 1.2 要想创建对象成功，需要满足：
> 	条件1：要求运行时类中必须提供一个空参的构造器
> 	条件2：要求提供的空参的构造器的权限要足够。
>
> 1.3 回忆：JavaBean中要求给当前类提供一个公共的空参的构造器。有什么用？
> 	场景1：子类对象在实例化时，子类的构造器的首行默认调用父类空参的构造器。
> 	场景2：在反射中，经常用来创建运行时类的对象。那么我们要求各个运行时类都提供一个空参的构造器，便于我们编写通用的
>       创建运行时类对象的代码。
>
> 1.4 在jdk9中标识为过时，替换成什么结构
> 	通过Constructor类调用newInstance(...)
>
> 2. 反射应用2：获取运行时类的内部结构
> 2.1 获取运行时类的内部结构1：所有属性、所有方法、所有构造器
> 2.2 获取运行时类的内部结构2：父类、接口们、包、带泛型的父类、父类的泛型等
>
>
> 3. （掌握）反射的应用3：调用指定的结构：指定的属性、方法、构造器
> 3.1 调用指定的属性（步骤）
> 步骤1.通过Class实例调用getDeclaredField(String fieldName)，获取运行时类指定名的属性
> 步骤2. setAccessible(true)：确保此属性是可以访问的
> 步骤3. 通过Filed类的实例调用get(Object obj) （获取的操作）
>                或 set(Object obj,Object value) （设置的操作）进行操作。
>    
>    3.2 调用指定的方法（步骤）
>    步骤1.通过Class的实例调用getDeclaredMethod(String methodName,Class ... args),获取指定的方法
>    步骤2. setAccessible(true)：确保此方法是可访问的
>    步骤3.通过Method实例调用invoke(Object obj,Object ... objs),即为对Method对应的方法的调用。
>         invoke()的返回值即为Method对应的方法的返回值
>         特别的：如果Method对应的方法的返回值类型为void，则invoke()返回值为null
>    
>    3.3 调用指定的构造器（步骤）
>    步骤1.通过Class的实例调用getDeclaredConstructor(Class ... args)，获取指定参数类型的构造器
>    步骤2.setAccessible(true)：确保此构造器是可以访问的
>    步骤3.通过Constructor实例调用newInstance(Object ... objs),返回一个运行时类的实例。
>
> 
>
> 4. 反射的应用4：通过反射获取注解的信息(见com.atguigu04.other.annotation包的测试)
>
> 复习：自定义注解
> ① 参照@SuppressWarnings 进行创建即可。
> ② 注解要想通过反射的方式获取，必须声明元注解：@Retention(RetentionPolicy.RUNTIME)
>
> 注：==针对于核心源码的api，内部的私有的结构在jdk17中就不可以通过反射调用了。==
>
> ```java
>     /*
>     * 针对于核心源码的api，内部的私有的结构在jdk17中就不可以通过反射调用了。
>     * */
>     @Test
>     public void test1() throws Exception {
> 
>         Class clazz = Class.forName("java.lang.String");
> 
>         String obj = (String) clazz.newInstance();
> 
>         //获取value属性，并获取其值
>         Field valueField = clazz.getDeclaredField("value");
>         valueField.setAccessible(true); //报错 java.lang.reflect.InaccessibleObjectException
>         System.out.println(valueField.get(obj));
>     }
> ```
>
> 

#### 获取运行时类的完整结构

##### 相关API

```java
//1.实现的全部接口
public Class<?>[] getInterfaces()   
//确定此对象所表示的类或接口实现的接口。 

//2.所继承的父类
public Class<? Super T> getSuperclass()
//返回表示此 Class 所表示的实体（类、接口、基本类型）的父类的 Class。

//3.全部的构造器
public Constructor<T>[] getConstructors()
//返回此 Class 对象所表示的类的所有public构造方法。
public Constructor<T>[] getDeclaredConstructors()
//返回此 Class 对象表示的类声明的所有构造方法。

//Constructor类中：
//取得修饰符: 
public int getModifiers();
//取得方法名称: 
public String getName();
//取得参数的类型：
public Class<?>[] getParameterTypes();

//4.全部的方法
public Method[] getDeclaredMethods()
//返回此Class对象所表示的类或接口的全部方法
public Method[] getMethods()  
//返回此Class对象所表示的类或接口的public的方法

//Method类中：
public Class<?> getReturnType()
//取得全部的返回值
public Class<?>[] getParameterTypes()
//取得全部的参数
public int getModifiers()
//取得修饰符
public Class<?>[] getExceptionTypes()
//取得异常信息

//5.全部的Field
public Field[] getFields() 
//返回此Class对象所表示的类或接口的public的Field。
public Field[] getDeclaredFields() 
//返回此Class对象所表示的类或接口的全部Field。

//Field方法中：
public int getModifiers()
//以整数形式返回此Field的修饰符
public Class<?> getType()  
//得到Field的属性类型
public String getName()  
//返回Field的名称。

//6. Annotation相关
get Annotation(Class<T> annotationClass) 
getDeclaredAnnotations() 

//7.泛型相关
//获取父类泛型类型：
Type getGenericSuperclass()
//泛型类型：ParameterizedType
//获取实际的泛型类型参数数组：
getActualTypeArguments()

//8.类所在的包
Package getPackage() 
```

##### 获取属性相关的东西

```java
@Test
    public void test1(){
        Class<Person> personClass = Person.class;
        //getFields():获取到运行时类本身及其所有的父类中声明为public权限的属性
        Field[] fields = personClass.getFields();
        for (Field field : fields) {
            System.out.println(field);
        }

        System.out.println("============================");

        //getDeclaredFields():获取当前运行时类中声明的所有属性
        Field[] declaredFields = personClass.getDeclaredFields();
        for (Field field : declaredFields) {
            System.out.println(field);
        }

    }

    //权限修饰符  变量类型  变量名
    @Test
    public void test2(){
        Class<Person> personClass = Person.class;
        Field[] declaredFields = personClass.getDeclaredFields();
        for (Field field : declaredFields) {
            //1.权限修饰符
            /*
             * 0x是十六进制
             * PUBLIC           = 0x00000001;  1    1
             * PRIVATE          = 0x00000002;  2	10
             * PROTECTED        = 0x00000004;  4	100
             * STATIC           = 0x00000008;  8	1000
             * FINAL            = 0x00000010;  16	10000
             * ...
             */
            int modifiers = field.getModifiers();
            System.out.print(modifiers + ":" + Modifier.toString(modifiers) + "\t");

            //2.数据类型
            Class<?> type = field.getType();
            System.out.println(type.getName() + "\t");

            //3.变量名
            String fieldName = field.getName();
            System.out.println(fieldName);

            System.out.println();
        }
    }
```

##### 获取方法相关的东西

```java
@Test
    public void test1(){
        Class<Person> personClass = Person.class;
        // getMethods():获取到运行时类本身及其所有的父类中声明为public权限的方法
        Method[] methods = personClass.getMethods();
        for (Method method : methods) {
            System.out.println(method);
        }

        System.out.println("======================================");
        // getDeclaredMethods():获取当前运行时类中声明的所有方法
        Method[] declaredMethods = personClass.getDeclaredMethods();
        for (Method declaredMethod : declaredMethods) {
            System.out.println(declaredMethod);
        }
    }

    // 注解信息
    // 权限修饰符 返回值类型 方法名(形参类型1 参数1,形参类型2 参数2,...) throws 异常类型1,...{}
    @Test
    public void test2(){
        Class<Person> personClass = Person.class;
        Method[] declaredMethods = personClass.getDeclaredMethods();
        for (Method declaredMethod : declaredMethods) {
            Annotation[] annotations = declaredMethod.getAnnotations();
            for (Annotation annotation : annotations) {
                System.out.println(annotation);
            }

            // 2.权限修饰符
            System.out.print(Modifier.toString(declaredMethod.getModifiers()) + "\t");
            //3.返回值类型
            System.out.print(declaredMethod.getReturnType().getName() + "\t");

            //4.方法名
            System.out.print(declaredMethod.getName());

            System.out.print("(");
            //5.形参列表
            Class<?>[] parameterTypes = declaredMethod.getParameterTypes();
            if (!(parameterTypes == null && parameterTypes.length == 0)){
                for (int i = 0; i < parameterTypes.length; i++) {
                    if (i == parameterTypes.length -1) {
                        System.out.print(parameterTypes[i].getName() + " args_" + i);
                        break;
                    }
                    System.out.print(parameterTypes[i].getName() + " args_" + i + ",");
                }
            }
            System.out.print(")");

            //6.抛出异常
            Class<?>[] exceptionTypes = declaredMethod.getExceptionTypes();
            if (exceptionTypes.length > 0){
                System.out.println("throws ");
                for (int i = 0; i < exceptionTypes.length; i++) {
                    if (i == exceptionTypes.length -1){
                        System.out.print(exceptionTypes[i].getName());
                        break;
                    }
                    System.out.print(exceptionTypes[i].getName() + ",");
                }
            }
            System.out.println();
            System.out.println("===============================================");

        }
    }
```

##### 获取父类、包

```java
 //（熟悉）获取运行时类的内部结构2：父类、接口们、包、带泛型的父类、父类的泛型等
    //1. 获取运行时类的父类
    @Test
    public void test1(){
        try {
            Class<?> aClass = Class.forName("com.atguigu03.reflectapply.data.Person");
            Class<?> superclass = aClass.getSuperclass();
            System.out.println(superclass);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    //2. 获取运行时类实现的接口
    @Test
    public void test2() throws ClassNotFoundException {
        Class<?> aClass = Class.forName("com.atguigu03.reflectapply.data.Person");
        Class<?>[] interfaces = aClass.getInterfaces();
        for (Class<?> anInterface : interfaces) {
            System.out.println(anInterface);
        }
    }

    //3. 获取运行时类所在的包
    @Test
    public void test3() throws ClassNotFoundException {
        Class<?> aClass = Class.forName("com.atguigu03.reflectapply.data.Person");
        Package aPackage = aClass.getPackage();
        System.out.println(aPackage);
    }

    //4. 获取运行时类的带泛型的父类
    @Test
    public void test4() throws ClassNotFoundException {
        Class<?> aClass = Class.forName("com.atguigu03.reflectapply.data.Person");
        Type genericSuperclass = aClass.getGenericSuperclass();
        System.out.println(genericSuperclass);
    }

    //5. 获取运行时类的父类的泛型 (难)
    @Test
    public void test5() throws ClassNotFoundException {
        Class<?> aClass = Class.forName("com.atguigu03.reflectapply.data.Person");
        //获取带泛型的父类（Type是一个接口，Class实现了此接口
        Type genericSuperclass = aClass.getGenericSuperclass();
        //如果父类是带泛型的，则可以强转为ParameterizedType
        ParameterizedType paramType = (ParameterizedType) genericSuperclass;
        //调用getActualTypeArguments()获取泛型的参数，结果是一个数组，因为可能有多个泛型参数。
        Type[] actualTypeArguments = paramType.getActualTypeArguments();
        //获取泛型参数的名称
        System.out.println(((Class<?>) actualTypeArguments[0]).getName());
    }
```

##### 获取注释信息

###### Table注释

```java
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;



@Target({ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
public @interface Table {
    String value() default "abc";
}
```

###### Column注释

```java
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target(ElementType.FIELD)
@Retention(RetentionPolicy.RUNTIME)
public @interface Column {
    String columnName();
    String columnType();
}
```

###### Customer类

```java
@Table(value = "t-customer")
public class Customer {
    @Column(columnName= "cust_name", columnType = "varchar(15)")
    private String name;
    @Column(columnName = "cust_age", columnType = "int")
    public int age;

    public Customer(){
//        System.out.println("Customer()...");
    }

    public Customer(int age){
        this.age = age;
    }

    private Customer(String name, int age){
        this.name = name;
        this.age = age;
    }

    public void show(){
        System.out.println("你好，我是一个Customer");
    }

    private String showNation(String nation){
        return "我的国籍是：" + nation;
    }

    @Override
    public String toString() {
        return "Customer{" +
                "name='" + name + '\'' +
                ", age=" + age +
                '}';
    }
}
```

###### 测试方法

```java
//获取类声明上的注解
    @Test
    public void test1(){
        Class<Customer> customerClass = Customer.class;
        Table annotation = customerClass.getDeclaredAnnotation(Table.class);
        System.out.println(annotation.value());
    }

    //获取属性声明的注解
    @Test
    public void test2(){
        Class<Customer> customerClass = Customer.class;
        try {
            Field nameField = customerClass.getDeclaredField("name");

            //获取属性声明上的注解
            Column nameColumn = nameField.getDeclaredAnnotation(Column.class);
            System.out.println(nameColumn.columnName());
            System.out.println(nameColumn.columnType());
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
        }

    }
```





#### 运行时类相关结构调用

> 注：`int.class`与`Integer.class`不同
>
> 若方法的返回类型为void，则利用反射调用`invoke()`时，返回值为null

##### 属性调用

```java
//********************如下是调用指定的属性************************
    /*
     * 反射的应用3-1：调用指定的属性
     *
     * */
    //public int age = 1;

    @Test
    public void test1(){
        Class<Person> personClass = Person.class;

        try {
            Person person = personClass.newInstance();
            //1. 获取运行时类指定名的属性
            Field age = personClass.getField("age");
            //2. 获取或设置此属性的值
            age.set(person, 2);
            System.out.println(age.get(person));
        } catch (InstantiationException | NoSuchFieldException | IllegalAccessException e) {
            e.printStackTrace();
        }
    }

    //private String name;
    @Test
    public void test2(){
        Class<Person> personClass = Person.class;
        try {
            Person person = personClass.newInstance();

            //1.通过Class实例调用getDeclaredField(String fieldName)，获取运行时类指定名的属性
            Field nameFiled = personClass.getDeclaredField("name");
            //2. setAccessible(true)：确保此属性是可以访问的
            nameFiled.setAccessible(true);
            //3. 通过Filed类的实例调用get(Object obj) （获取的操作）
            // 或 set(Object obj,Object value) （设置的操作）进行操作。
            nameFiled.set(person, "Tom");
            System.out.println(nameFiled.get(person));

        } catch (InstantiationException | IllegalAccessException | NoSuchFieldException e) {
            e.printStackTrace();
        }
    }

    //private static String info;
    @Test
    public void test3(){
        Class<Person> personClass = Person.class;

        try {
            //1.通过Class实例调用getDeclaredField(String fieldName)，获取运行时类指定名的属性
            Field infoFiled = personClass.getDeclaredField("info");
            //2. setAccessible(true)：确保此属性是可以访问的
            infoFiled.setAccessible(true);
            //3. 通过Filed类的实例调用get(Object obj) （获取的操作）
            // 或 set(Object obj,Object value) （设置的操作）进行操作。
            /*infoFiled.set(Person.class, "我是一个人");
            System.out.println(infoFiled.get(Person.class));*/
            infoFiled.set(null, "我是一个人");
            System.out.println(infoFiled.get(null));
        } catch (NoSuchFieldException | IllegalAccessException e) {
            e.printStackTrace();
        }
    }
```

##### 方法调用

```java
//********************如下是调用指定的方法************************
    /*
     * 反射的应用3-2：调用指定的方法
     *
     * */
    //private String showNation(String nation,int age)
    @Test
    public void test4(){
        Class<Person> personClass = Person.class;
        try {
            Person person = personClass.newInstance();
            //1.通过Class的实例调用getDeclaredMethod(String methodName,Class ... args),获取指定的方法
            Method showNationMethod = personClass.getDeclaredMethod("showNation", String.class, int.class);
            //2. setAccessible(true)：确保此方法是可访问的
            showNationMethod.setAccessible(true);
            //3.通过Method实例调用invoke(Object obj,Object ... objs),即为对Method对应的方法的调用。
            //invoke()的返回值即为Method对应的方法的返回值
            //特别的：如果Method对应的方法的返回值类型为void，则invoke()返回值为null
            Object returnValue = showNationMethod.invoke(person, "CHN", 10);
            System.out.println(returnValue);
        } catch (InstantiationException | IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            e.printStackTrace();
        }
    }

    //public static void showInfo()
    @Test
    public void test5(){
        Class<Person> personClass = Person.class;

        try {
            //1.通过Class的实例调用getDeclaredMethod(String methodName,Class ... args),获取指定的方法
            Method showInfoMethod = personClass.getDeclaredMethod("showInfo");
            //2. setAccessible(true)：确保此方法是可访问的
            showInfoMethod.setAccessible(true);
            //3.通过Method实例调用invoke(Object obj,Object ... objs),即为对Method对应的方法的调用。
            //invoke()的返回值即为Method对应的方法的返回值
            //特别的：如果Method对应的方法的返回值类型为void，则invoke()返回值为null
            Object returnValue = showInfoMethod.invoke(null);
            System.out.println(returnValue);
        } catch (NoSuchMethodException | IllegalAccessException | InvocationTargetException e) {
            e.printStackTrace();
        }
    }
```

##### 构造器调用

```java
 //********************如下是调用指定的构造器************************
    /*
     * 反射的应用3-3：调用指定的构造器
     *
     * */
    //private Person(String name, int age)
    @Test
    public void test6(){
        Class<Person> personClass = Person.class;

        try {
            //1.通过Class的实例调用getDeclaredConstructor(Class ... args)，获取指定参数类型的构造器
            Constructor<Person> declaredConstructor = personClass.getDeclaredConstructor(String.class, int.class);
            //2.setAccessible(true)：确保此构造器是可以访问的
            declaredConstructor.setAccessible(true);
            //3.通过Constructor实例调用newInstance(Object ... objs),返回一个运行时类的实例。
            Person tom = declaredConstructor.newInstance("Tom", 12);
            System.out.println(tom);
        } catch (NoSuchMethodException | InstantiationException | IllegalAccessException | InvocationTargetException e) {
            e.printStackTrace();
        }
    }

    //使用Constructor替换原有的使用Class调用newInstance()的方式创建对象
    @Test
    public void test7(){
        Class<Person> personClass = Person.class;
        try {
            //1.通过Class的实例调用getDeclaredConstructor(Class ... args)，获取指定参数类型的构造器
            Constructor<Person> constructor = personClass.getConstructor();
            //2.setAccessible(true)：确保此构造器是可以访问的
            constructor.setAccessible(true);
            //3.通过Constructor实例调用newInstance(Object ... objs),返回一个运行时类的实例。
            Person person = constructor.newInstance();
            System.out.println(person);
        } catch (NoSuchMethodException | InstantiationException | IllegalAccessException | InvocationTargetException e) {
            e.printStackTrace();
        }
    }
```

### 案例

#### 加载指定的配置文件

```java
/*通过ClassLoader加载指定的配置文件*/
    @Test
    public void test3(){
        Properties properties = new Properties();

        //通过类的加载器读取的文件的默认的路径为：当前module下的src下
        InputStream inputStream = ClassLoader.getSystemClassLoader().getResourceAsStream("info1.properties");

        try {
            properties.load(inputStream);
            String name = properties.getProperty("name");
            String password = properties.getProperty("password");
            System.out.println(name + ":" + password);
        } catch (IOException e) {
            e.printStackTrace();
        }

        try {
            if (inputStream != null)
                inputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    //Properties:处理属性文件
    @Test
    public void test4(){
        FileInputStream fileInputStream = null;
        try {
            Properties properties = new Properties();

            //读取的文件的默认路径为：当前的module
            fileInputStream = new FileInputStream(new File("info.properties"));

            properties.load(fileInputStream);

            String name = properties.getProperty("name");
            String password = properties.getProperty("password");
            System.out.println(name + ":" + password);
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                if (fileInputStream != null)
                    fileInputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

    }
```

#### 动态创建实例、调用方法

```java
    //=====================================================================
    //体会：静态性
    public Person getInstance(){return new Person();}

    //体会：反射的动态性
    //举例1：动态获取实例
    public <T> T getInstance(String className) throws Exception {
        Class<?> clazz = Class.forName(className);
        Constructor<?> constructor = clazz.getDeclaredConstructor();
        constructor.setAccessible(true);

        return (T) constructor.newInstance();
    }

    @Test
    public void test1() throws Exception {
        Person person = getInstance();
        System.out.println(person);

        String className = "com.atguigu04.other.dynamic.Person";
        Person person1 = getInstance(className);
        System.out.println(person1);

        String className1 = "java.util.Date";
        Date date = getInstance(className1);
        System.out.println(date);
    }


    //=======================================================================
    //体会：反射的动态性
    //举例2：动态调用方法
    public Object invoke(String className, String methodName) throws Exception{
        //1.创建全类名对应的运行时类的对象
        Class<?> clazz = Class.forName(className);
        Constructor<?> constructor = clazz.getDeclaredConstructor();
        Object o = constructor.newInstance();
        //2. 获取运行时类中指定的方法，并调用
        Method method = clazz.getDeclaredMethod(methodName);
        method.setAccessible(true);
        return  method.invoke(o);
    }

    @Test
    public void test2() throws Exception {
        String className = "com.atguigu04.other.dynamic.Person";
        String methodName = "show";
        Object returnValue = invoke(className, methodName);
        System.out.println(returnValue);
    }
```



## JDK8-17新特性

### lambda表达式

> 1. Lambda表达式的使用举例：
>
>    (o1, o2) -> Integer.compare(o1,o2);
>
> 2. Lambda表达式的格式举例:
>
>    lambda形参列表 -> lambda体
>
> 3. Lambda表达式的格式
>
>    -> : lambda操作符或箭头操作符
>    -> 的左边: lambda形参列表，对应着要重写的接口中的抽象方法的形参列表。
>    -> 的右边: lambda体，对应着接口的实现类要重写的方法的方法体。
>
> 4. Lambda表达式的本质：
>
>    一方面，lambda表达式作为接口的实现类的对象。  ---> "万事万物皆对象"
>    另一方面，lambda表达式是一个匿名函数。
>
> 5. 函数式接口：
>   5.1 什么是函数式接口？为什么需要函数式接口？
>       如果接口中只声明有一个抽象方法，则此接口就称为函数式接口。
>   	因为==只有给函数式接口提供实现类的对象时，我们才可以使用lambda表达式。==
>
>   5.2 api中函数式接口所在的包
>         jdk8中声明的函数式接口都在java.util.function包下。
>
>   5.3 4个基本的函数式接口
>
>   |            | 接口            | 对应的抽象方法      |
>   | ---------- | --------------- | ------------------- |
>   | 消费型接口 | `Consumer<T>`   | `void accept(T t)`  |
>   | 供给型接口 | `Supplier<T>`   | `T get()`           |
>   | 函数型接口 | `Function<T,R>` | `R apply(T t)`      |
>   | 判断型接口 | `Predicate<T>`  | `boolean test(T t)` |
>
>   
>
> 6. Lambda表达式的语法规则总结
>
>    -> 的左边：lambda形参列表，参数的类型都可以省略。如果形参只有一个，则一对()也可以省略。
>
>    -> 的右边：lambda体，对应着重写的方法的方法体。如果方法体中只有一行执行语句，则一对{}可以省略。
>                                           如果有return关键字，则必须一并省略。

> 注：无论是方法、还是构造器的引用，==都可以看作是一种方法对另一种方法的覆盖！！==
>
> ```java
> 		Consumer<String> consumer = new Consumer<String>() {
> 			@Override
> 			public void accept(String s) {
> 				System.out.println(s);	//看作println()对accept()的覆盖
> 			}
> 		};
> 		consumer.accept("我是consumer");
> 
> 		//方法引用
> 		Consumer<String> consumer1 = System.out::println;	
> 		consumer1.accept("我是consumer1");
> ```
>
> 
>
> 1. 举例：
>   Integer :: compare;
>
> 2. 方法引用的理解
>
>    方法引用，可以看做是基于lambda表达式的进一步刻画。
>    当需要提供一个函数式接口的实例时，我们可以使用lambda表达式提供此实例。
>    当满足一定的条件的情况下，我们还可以使用方法引用或构造器引用替换lambda表达式。
>
> 3. 方法引用的本质：
>   方法引用作为了函数式接口的实例。  ---> “万事万物皆对象”
>
> 4. 格式：
>   类(或对象) :: 方法名
>
> 5. 具体使用情况说明：
>   情况1：对象 :: 实例方法
>   要求：函数式接口中的抽象方法a与其内部实现时调用的对象的某个方法b的形参列表和返回值类型都相同(或一致)。
>   此时，可以考虑使用方法b实现对方法a的替换、覆盖。此替换或覆盖即为方法引用。
>   注意：此方法b是非静态的方法，需要对象调用。
>
>   情况2：类 :: 静态方法
>   要求：函数式接口中的抽象方法a与其内部实现时调用的类的某个静态方法b的形参列表和返回值类型都相同(或一致)。
>   此时，可以考虑使用方法b实现对方法a的替换、覆盖。此替换或覆盖即为方法引用。
>   注意：此方法b是静态的方法，需要类调用。
>
>   情况3： 类 :: 实例方法
>   要求：函数式接口中的抽象方法a与其内部实现时调用的对象的某个方法b的返回值类型相同。
>      同时，==抽象方法a中有n个参数，方法b中有n-1个参数，且抽象方法a的第1个参数作为方法b的调用者，且抽象方法a的后n-1个参数与方法b的n-1个参数的类型相同(或一致)。则可以考虑使用方法b实现对方法a的替换、覆盖。此替换或覆盖即为方法引用。==
>   注意：此方法b是非静态的方法，需要对象调用。但是形式上，写出对象a所属的类 （笔误，改为：写成对象所属的类）

> 1. 构造器引用
>   1.1 格式：
>   类名 :: new
>
>   1.2 说明:
>   调用了类名对应的类中的某一个确定的构造器
>   具体调用的是类中的哪一个构造器呢？取决于函数式接口的抽象方法的形参列表！
>
> 2. 数组引用
>   格式：数组名[] :: new

#### lambda表达式的简写

```java
    //语法格式一：无参，无返回值
    @Test
    public void test1(){
        Runnable r1 = new Runnable() {
            @Override
            public void run() {
                System.out.println("我爱北京天安门");
            }
        };

        r1.run();

        System.out.println("***********************");

        Runnable r2 = () -> {System.out.println("我爱西安");};
        r2.run();



    }
    //语法格式二：Lambda 需要一个参数，但是没有返回值。
    @Test
    public void test2(){

        Consumer<String> con = new Consumer<String>() {
            @Override
            public void accept(String s) {
                System.out.println(s);
            }
        };
        con.accept("谎言和誓言的区别是什么？");

        System.out.println("*******************");

        Consumer<String> consumer2 = (String s) -> {System.out.println(s);};

        consumer2.accept("个是说的人当真了，一个是听的人当真了。");



    }

    //语法格式三：数据类型可以省略，因为可由编译器推断得出，称为“类型推断”
    @Test
    public void test3(){

        Consumer<String> con1 = (String s) -> {
            System.out.println(s);
        };
        con1.accept("如果大学可以重来，你最想重来的事是啥？");

        System.out.println("*******************");
        Consumer<String> consumer2 = (s) -> {
            System.out.println(s);
        };
        consumer2.accept("谈一场轰轰烈烈的爱情");

    }




    //语法格式四：Lambda 若只需要一个参数时，参数的小括号可以省略
    @Test
    public void test4(){
        Consumer<String> con1 = (s) -> {
            System.out.println(s);
        };
        con1.accept("世界那么大，我想去看看");

        System.out.println("*******************");
        Consumer<String> consumer2 = s -> {
            System.out.println(s);
        };
        consumer2.accept("世界那么大，我想去看看");




    }

    //语法格式五：Lambda 需要两个或以上的参数，多条执行语句，并且可以有返回值
    @Test
    public void test5(){

        Comparator<Integer> com1 = new Comparator<Integer>() {
            @Override
            public int compare(Integer o1, Integer o2) {
                System.out.println(o1);
                System.out.println(o2);
                return o1.compareTo(o2);
            }
        };

        System.out.println(com1.compare(12,21));

        System.out.println("*****************************");

        Comparator<Integer> comparator2 = (o1, o2) -> {
            System.out.println(o1);
            System.out.println(o2);
            return o1.compareTo(o2);
        };

        System.out.println(comparator2.compare(12,21));



    }

    //语法格式六：当 Lambda 体只有一条语句时，return 与大括号若有，都可以省略
    @Test
    public void test6(){

        Comparator<Integer> com1 = (o1,o2) -> {
            return o1.compareTo(o2);
        };

        System.out.println(com1.compare(12,6));

        System.out.println("*****************************");

        Comparator<Integer> comparator2 = (o1, o2) -> o1.compareTo(o2);
        System.out.println(comparator2.compare(15,18));

    }
```

#### 方法引用式的简写

```java
	// 情况一：对象 :: 实例方法
	//Consumer中的void accept(T t)
	//PrintStream中的void println(T t)
	@Test
	public void test1() {
		Consumer<String> consumer = new Consumer<String>() {
			@Override
			public void accept(String s) {
				System.out.println(s);
			}
		};
		consumer.accept("我是consumer");

		//方法引用
		Consumer<String> consumer1 = System.out::println;
		consumer1.accept("我是consumer1");


	}
	
	//Supplier中的T get()
	//Employee中的String getName()
	@Test
	public void test2() {
		Employee employee = new Employee(1001, "马化腾", 34, 6000.38);
		Supplier<String> employeeSupplier = new Supplier<>() {
			@Override
			public String get() {
				return employee.getName();
			}
		};
		System.out.println(employeeSupplier.get());

		//方法引用
		Supplier<String> supplier1 = employee :: getName;
		System.out.println(supplier1.get());

	}

	// 情况二：类 :: 静态方法
	//Comparator中的int compare(T t1,T t2)
	//Integer中的int compare(T t1,T t2)
	@Test
	public void test3() {
		Comparator<Integer> comparator = new Comparator<>() {
			@Override
			public int compare(Integer o1, Integer o2) {
				return Integer.compare(o1, o2);
			}
		};
		System.out.println(comparator.compare(12,21));

		//方法引用
		Comparator<Integer> comparator1 = Integer :: compare;
		System.out.println(comparator1.compare(12,22));
	}
	
	//Function中的R apply(T t)
	//Math中的Long round(Double d)
	@Test
	public void test4() {
		Function<Double, Long> function = new Function<>() {
			@Override
			public Long apply(Double aDouble) {
				return Math.round(aDouble);
			}
		};
		System.out.println(function.apply(-9.8));

		//方法引用
		Function<Double,Long> function1 = Math::round;
		System.out.println(function1.apply(-9.4));

	}

	// 情况三：类 :: 实例方法 
	// Comparator中的int comapre(T t1,T t2)
	// String中的int t1.compareTo(t2)
	@Test
	public void test5() {
		Comparator<String> comparator = new Comparator<>() {
			@Override
			public int compare(String o1, String o2) {
				return o1.compareTo(o2);
			}
		};
		System.out.println(comparator.compare("abc", "abb"));

		//方法引用
		Comparator<String> comparator1 = String::compareTo;
		System.out.println(comparator1.compare("abc", "abb"));
	}

	//BiPredicate中的boolean test(T t1, T t2);
	//String中的boolean t1.equals(t2)
	@Test
	public void test6() {
		BiPredicate<String, String> biPredicate = new BiPredicate<>() {
			@Override
			public boolean test(String s1, String s2) {
				return s1.equals(s2);
			}
		};
		System.out.println(biPredicate.test("anc","anc"));

		//方法引用
		BiPredicate<String, String> biPredicate1 = String::equals;
		System.out.println(biPredicate1.test("anc","anc"));
	}
	
	// Function中的R apply(T t)
	// Employee中的String getName();
	@Test
	public void test7() {
		Employee emp = new Employee(1001, "马化腾", 34, 6000.38);
		Function<Employee, String> function = new Function<>() {
			@Override
			public String apply(Employee employee) {
				return employee.getName();
			}
		};
		System.out.println(function.apply(emp));

		//方法引用
		Function<Employee, String> function1 = Employee::getName;
		System.out.println(function1.apply(emp));
	}

```

#### 构造器、数组引用

```java
	//构造器引用
    //Supplier中的T get()
    @Test
    public void test1(){
        Supplier<Employee> supplier = new Supplier<>() {
            @Override
            public Employee get() {
                return new Employee();
            }
        };
        System.out.println(supplier.get());

        //构造器引用
        Supplier<Employee> supplier1 = Employee::new;//调用的是Employee类中空参的构造器
        System.out.println(supplier1.get());
    }

	//Function中的R apply(T t)
    @Test
    public void test2(){
        Function<Integer, Employee> function = new Function<>() {
            @Override
            public Employee apply(Integer id) {
                return new Employee(id);
            }
        };
        System.out.println(function.apply(1));
        //构造器引用
        Function<Integer, Employee> function1 = Employee::new;//调用的是Employee类中参数是Integer/int类型的构造器
        System.out.println(function1.apply(2));
    }

	//BiFunction中的R apply(T t,U u)
    @Test
    public void test3(){
        BiFunction<Integer, String, Employee> biFunction = new BiFunction<>() {
            @Override
            public Employee apply(Integer integer, String s) {
                return new Employee(integer, s);
            }
        };
        System.out.println(biFunction.apply(1, "Jerry"));
        //构造器引用
        BiFunction<Integer,String,Employee> biFunction1 = Employee::new;
        System.out.println(biFunction1.apply(3,"zfp"));
    }

	//数组引用
    //Function中的R apply(T t)
    @Test
    public void test4(){
        Function<Integer, Employee[]> function = new Function<>() {
            @Override
            public Employee[] apply(Integer integer) {
                return new Employee[integer];
            }
        };
        System.out.println(function.apply(10).length);

        //数组引用
        Function<Integer, Employee[]> function1 = Employee[]::new;
        System.out.println(function1.apply(20).length);
    }
```

### Stream API

> 具体API详见[<font color="violet">Stream相关API.xmind</font>](./相关资料/Xmind/相关API/Stream相关API/Stream相关API.xmind)

> 1. Stream API  vs 集合框架
>    Stream API 关注的是多个数据的计算（排序、查找、过滤、映射、遍历等），面向CPU的。
>        集合关注的数据的存储，面向内存的。
>    Stream API 之于集合，类似于SQL之于数据表的查询。
>
>
> 2. 使用说明
> ①Stream 自己不会存储元素。
> ②Stream 不会改变源对象。相反，他们会返回一个持有结果的新Stream。
> ③Stream 操作是延迟执行的。这意味着他们会等到需要结果的时候才执行。即一旦执行终止操作，就执行中间操作链，并产生结果。
> ④ Stream一旦执行了终止操作，就不能再调用其它中间操作或终止操作了。
>
>
> 3. Stream 执行流程
> 步骤1：Stream的实例化
> 步骤2：一系列的中间操作
> 步骤3：执行终止操作

#### 创建流的方式

```java
    //创建 Stream方式一：通过集合
    @Test
    public void test1(){
        List<Employee> list = EmployeeData.getEmployees();
//        default Stream<E> stream() : 返回一个顺序流
        Stream<Employee> stream = list.stream();
//        default Stream<E> parallelStream() : 返回一个并行流
        Stream<Employee> stream1 = list.parallelStream();
        System.out.println(stream);
        System.out.println(stream1);

    }

    //创建 Stream方式二：通过数组
    @Test
    public void test2(){
        //调用Arrays类的static <T> Stream<T> stream(T[] array): 返回一个流
        Integer[] arr = {1, 2, 3, 4, 5, 6};
        int a = arr.length;
        Stream<Integer> stream = Arrays.stream(arr);

        int[] arr1 = {1, 2, 3, 4, 5};
        IntStream stream1 = Arrays.stream(arr1);


    }
    //创建 Stream方式三：通过Stream的of()
    @Test
    public void test3(){
        Stream<String> stream = Stream.of("AA", "BB", "CC", "SS", "DD");
    }
```

#### 中间操作

```java
    //1-筛选与切片
    @Test
    public void test1() {
//        filter(Predicate p)——接收 Lambda ， 从流中排除某些元素。
        //练习：查询员工表中薪资大于7000的员工信息
        List<Employee> list = EmployeeData.getEmployees();
        Stream<Employee> stream = list.stream();
        System.out.println("==========查询员工表中薪资大于7000的员工信息=============");
        stream.filter(employee -> employee.getSalary()>7000).forEach(System.out::println);

//        limit(n)——截断流，使其元素不超过给定数量。
        System.out.println("limit(2)");
        list.stream().filter(employee -> employee.getSalary()>7000).limit(2).forEach(System.out::println);
//        skip(n) —— 跳过元素，返回一个扔掉了前 n 个元素的流。若流中元素不足 n 个，则返回一个空流。与 limit(n) 互补
        System.out.println("skip(5)");
        list.stream().skip(5).forEach(System.out::println);
//        distinct()——筛选，通过流所生成元素的 hashCode() 和 equals() 去除重复元素
        list.add(new Employee(1009, "马斯克", 40, 12500.32));
        list.add(new Employee(1009, "马斯克", 40, 12500.32));
        list.add(new Employee(1009, "马斯克", 40, 12500.32));
        list.add(new Employee(1009, "马斯克", 40, 12500.32));
        System.out.println("distinct()");
        list.stream().distinct().forEach(System.out::println);

    }

    //映射
    @Test
    public void test2() {
        //map(Function f)——接收一个函数作为参数，将元素转换成其他形式或提取信息，该函数会被应用到每个元素上，并将其映射成一个新的元素。
        //练习：转换为大写
        List<String> list = Arrays.asList("aa", "bb", "cc", "dd");
        list.stream().map(s -> s.toUpperCase()).forEach(System.out::println);
        list.stream().map(String::toUpperCase).forEach(System.out::println);
        System.out.println();
        //练习：获取员工姓名长度大于3的员工的姓名。
        List<Employee> employees = EmployeeData.getEmployees();
        employees.stream().map(Employee::getName).filter(name -> name.length()>3).forEach(System.out::println);

    }

    //3-排序
    @Test
    public void test3() {
        //sorted()——自然排序
        Integer[] arr = new Integer[]{345,3,64,3,46,7,3,34,65,68};
        String[] arr1 = new String[]{"GG","DD","MM","SS","JJ"};

        Arrays.stream(arr).sorted().forEach(System.out::println);
        System.out.println(Arrays.toString(arr));   //arr数组并没有因为升序，做调整。

        Arrays.stream(arr1).sorted().forEach(System.out::println);
        System.out.println(Arrays.toString(arr1));
        //因为Employee没有实现Comparable接口，所以报错！
        /*List<Employee> list = EmployeeData.getEmployees();
        list.stream().sorted().forEach(System.out::println);*/

        //sorted(Comparator com)——定制排序
        List<Employee> list = EmployeeData.getEmployees();
        list.stream().sorted((e1, e2) -> e1.getAge()-e2.getAge()).forEach(System.out::println);

        //针对于字符串从大大小排列
        Arrays.stream(arr1).sorted(String::compareTo).forEach(System.out::println);


    }
```

#### 终止操作

```java
    //1-匹配与查找
    @Test
    public void test1(){
//        allMatch(Predicate p)——检查是否匹配所有元素。
//          练习：是否所有的员工的年龄都大于18
        List<Employee> list = EmployeeData.getEmployees();
        System.out.println(list.stream().allMatch(employee -> employee.getAge() >18));

//        anyMatch(Predicate p)——检查是否至少匹配一个元素。
//         练习：是否存在员工的工资大于 10000
        System.out.println(list.stream().anyMatch(employee -> employee.getAge() > 18));

//        findFirst——返回第一个元素
        System.out.println(list.stream().findFirst().get());

    }

    @Test
    public void test2(){
        // count——返回流中元素的总个数
        List<Employee> list = EmployeeData.getEmployees();
        System.out.println(list.stream().filter(employee -> employee.getSalary() > 7000).count());
//        max(Comparator c)——返回流中最大值
//        练习：返回最高的工资：
        System.out.println(list.stream().max((e1, e2) -> Double.compare(e1.getSalary(),e2.getSalary())).get().getSalary());
        System.out.println(list.stream().map(Employee::getSalary).max(Double::compareTo).get());
//        min(Comparator c)——返回流中最小值
//        练习：返回最低工资的员工
        System.out.println(list.stream().min((e1,e2) -> Double.compare(e1.getSalary(),e2.getSalary())));
//        forEach(Consumer c)——内部迭代
        list.stream().forEach(System.out::println);

    }

    //2-归约
    @Test
    public void test3(){
//        reduce(T identity, BinaryOperator)——可以将流中元素反复结合起来，得到一个值。返回 T
//        练习1：计算1-10的自然数的和
        List<Integer> list = Arrays.asList(1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
        System.out.println(list.stream().reduce(0,(x, y) -> x+y));
        System.out.println(list.stream().reduce(0,Integer::sum));

//        reduce(BinaryOperator) ——可以将流中元素反复结合起来，得到一个值。返回 Optional<T>
//        练习2：计算公司所有员工工资的总和
        List<Employee> employees = EmployeeData.getEmployees();
        System.out.println(employees.stream().map(Employee::getSalary).reduce(Double::sum));

    }

    //3-收集
    @Test
    public void test4(){
        List<Employee> employees = EmployeeData.getEmployees();
//        collect(Collector c)——将流转换为其他形式。接收一个 Collector接口的实现，用于给Stream中元素做汇总的方法
//        练习1：查找工资大于6000的员工，结果返回为一个List或Set
        List<Employee> list1 = employees.stream().filter(employee -> employee.getSalary() > 6000).collect(Collectors.toList());
        List<Employee> list2 = employees.stream().filter(employee -> employee.getSalary() > 6000).toList();
        list1.forEach(System.out::println);
        list2.forEach(System.out::println);
        System.out.println();
//        练习2：按照员工的年龄进行排序，返回到一个新的List中
        List<Employee> list3 = employees.stream().sorted((e1, e2) -> Integer.compare(e1.getAge(), e2.getAge())).toList();
        list3.forEach(System.out::println);
    }
```

### 语法方面新特性

#### jShell

> ==这是JDK9的新特性==。

> 命令行中通过指令jshell，调取jshell工具
>
> ![1693329404148](Java.assets/1693329404148.png)
>
> 常用命令：
>
> /help: 获取有关使用 jshell 工具的信息
>
> /help intro : jshell 工具的简介
>
> /list : 列出当前 session 里所有有效的代码片段
>
> /vars : 查看当前 session 下所有创建过的变量
>
> /methods : 查看当前 session 下所有创建过的方法
>
> /imports : 列出导入的包
>
> /history : 键入的内容的历史记录
>
> /edit : 使用外部代码编辑器来编写 Java 代码
>
> /exit : 退出 jshell 工具

#### try_catch

> 改变的方向主要在于方便关闭资源
>
> ![1693330157550](Java.assets/1693330157550.png)

>```java
>1. JDK7新特性：
>
>try(资源对象的声明和初始化){
>    业务逻辑代码,可能会产生异常
>}catch(异常类型1 e){
>    处理异常代码
>}catch(异常类型2 e){
>    处理异常代码
>}
>
>
>
>2. JDK9新特性：
>
>A a = new A();
>B b = new B();
>try(a;b){
>    可能产生的异常代码
>}catch(异常类名 变量名){
>    异常处理的逻辑
>}
>```

```java
   /*
     * 举例1：
     * JDK7之前的写法
     * */
    @Test
    public void test01() {
        FileWriter fw = null;
        BufferedWriter bw = null;
        try {
            fw = new FileWriter("test.txt");
            bw = new BufferedWriter(fw);

            bw.write("hello,世界");
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                if (bw != null) {
                    bw.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    /*
     * 举例1：
     * JDK7中的写法
     * */
    @Test
    public void test02() {
        try (FileWriter fw = new FileWriter("test.txt");
             BufferedWriter bw = new BufferedWriter(fw);
        ) {
            bw.write("hello,世界123");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /*
     * 举例2：从test.txt(utf-8)文件中，读取内容，写出到abc.txt(gbk)文件中
     * JDK7之前的写法
     * */
    @Test
    public void test03() {
        BufferedReader br = null;
        BufferedWriter bw = null;
        try {
            FileInputStream fis = new FileInputStream("test.txt");
            InputStreamReader isr = new InputStreamReader(fis, "utf-8");
            br = new BufferedReader(isr);

            FileOutputStream fos = new FileOutputStream("abc.txt");
            OutputStreamWriter osw = new OutputStreamWriter(fos, "gbk");
            bw = new BufferedWriter(osw);

            String str;
            while ((str = br.readLine()) != null) {
                bw.write(str);
                bw.newLine();
                bw.flush();
            }
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                if (bw != null)
                    bw.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            try {
                if (br != null)
                    br.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    /*
     * 举例2：从test.txt(utf-8)文件中，读取内容，写出到abc.txt(gbk)文件中
     * JDK7中的写法
     * */
    @Test
    public void test04() {
        try (
                FileInputStream fis = new FileInputStream("test.txt");
                InputStreamReader isr = new InputStreamReader(fis, "utf-8");
                BufferedReader br = new BufferedReader(isr);

                FileOutputStream fos = new FileOutputStream("abc.txt");
                OutputStreamWriter osw = new OutputStreamWriter(fos, "gbk");
                BufferedWriter bw = new BufferedWriter(osw);
        ) {
            String str;
            while ((str = br.readLine()) != null) {
                bw.write(str);
                bw.newLine();
                bw.flush();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

    }


    //jdk9中举例：
    @Test
    public void test05() {
        InputStreamReader reader = new InputStreamReader(System.in);
        OutputStreamWriter writer = new OutputStreamWriter(System.out);
        try (reader; writer) {
            //reader、writer是final的，不可再被赋值
//            reader = new InputStreamReader(System.in);

        } catch (IOException e) {
            e.printStackTrace();
        }
    }
```

#### var类型推断

> jdk10新特性

```java
    //可以使用的场景
    @Test
    public void test1(){
        //1.局部变量的实例化
        var list = new ArrayList<String>();

        var set = new LinkedHashSet<Integer>();

        //2.增强for循环中的索引
        for (var v : list) {
            System.out.println(v);
        }

        //3.传统for循环中
        for (var i = 0; i < 100; i++) {
            System.out.println(i);
        }

        //4. 返回值类型含复杂泛型结构
        var iterator = set.iterator();

        HashMap<String,Integer> map = new HashMap<>();
        var entrySet = map.entrySet();

    }

    /*
    - 声明一个成员变量
    - 声明一个数组变量，并为数组静态初始化（省略new的情况下）
    - 方法的返回值类型
    - 方法的参数类型
    - 没有初始化的方法内的局部变量声明
    - 作为catch块中异常类型
    - Lambda表达式中函数式接口的类型
    - 方法引用中函数式接口的类型
    * */
//    var i;
//    var j = 0;
    @Test
    public void test2(){
        var arr = new int[]{1,2,3};
//        var arr1 = {1,2,3};
    }

//    public var method(int i,var m){
//        var i = 0;
//    }

    @Test
    public void test3(){
//        try{
//            System.out.println(10 / 0);
//        }  catch (var e){
//            e.printStackTrace();
//        }

//        var com = (s1,s2)-> s1.compareTo(s2);
    }
```

#### instanceof

>JDK14中预览特性。
>JDK15中第二次预览。
>JDK16中转正特性。
>
>```java
>JDK14之前：
>// 先判断类型
>if (obj instanceof String) {
>    // 然后转换
>    String s = (String) obj;
>    // 然后才能使用
>}
>
>JDK14:（自动匹配模式）
>if (obj instanceof String s) {
>    // 如果类型匹配 直接使用
>} else {
>    // 如果类型不匹配则不能直接使用
>}
>```

```java
public class InstanceOfTest {
    /*
    * 举例1：
    * JDK14之前
    * */
    @Test
    public void test1(){
        Object obj = new String("hello,Java14");

        if(obj instanceof String){
            String str = (String) obj;
            System.out.println(str.contains("Java"));
        }else{
            System.out.println("非String类型");
        }
    }

    /*
     * 举例1：
     * JDK14中
     * */
    @Test
    public void test2(){
        Object obj = new String("hello,Java14");

        if(obj instanceof String str){
            System.out.println(str.contains("Java"));
        }else{
            System.out.println("非String类型");
        }

    }

}

/*
* 举例2
* */
class Computer{
    private String model; //型号
    private double price;//价格

    //方式1：
//    public boolean equals(Object o){
//        if(o instanceof Computer){
//            Computer other = (Computer) o;
//            if(this.model.equals(other.model) && this.price == other.price){
//                return true;
//            }
//        }
//        return false;
//    }

    //方式2：
//    public boolean equals(Object o){
//        if(o instanceof Computer other){
//            return this.model.equals(other.model) && this.price == other.price
//        }
//        return false;
//    }

    public boolean equals(Object o){
        return o instanceof Computer other && this.model.equals(other.model)
                && this.price == other.price;
    }
}
```

#### switch

>JDK12中预览特性：switch表达式
>JDK13中二次预览特性：switch表达式
>JDK14中转正特性：switch表达式
>
>JDK17的预览特性：switch的模式匹配
>	注：预览特性需要在idea中额外设置语法leavel，否则会报错
>
>![1693330236154](Java.assets/1693330236154.png)

```java
enum Week {
    MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY;
}

public class SwitchExpressTest {
    /*
     * 举例1：
     * JDK12之前的写法
     * */
    @Test
    public void test1() {
        Week day = Week.FRIDAY;
        switch (day) {
            case MONDAY:
                System.out.println(1);
                break;
            case TUESDAY:
            case WEDNESDAY:
            case THURSDAY:
                System.out.println(2);
                break;
            case FRIDAY:
                System.out.println(3);
                break;
            case SATURDAY:
            case SUNDAY:
                System.out.println(4);
                break;
            default:
                throw new RuntimeException("What day is today?" + day);
        }
    }

    /*
     * 举例1：
     * JDK12中的写法：switch表达式，省去了break语句，避免了因少写break而出现case穿透
     * */
    @Test
    public void test2() {
        Week day = Week.FRIDAY;
        switch (day) {
            case MONDAY -> System.out.println(1);
            case TUESDAY, WEDNESDAY, THURSDAY -> System.out.println(2);
            case FRIDAY -> System.out.println(3);
            case SATURDAY, SUNDAY -> System.out.println(4);
            default -> throw new RuntimeException("What day is today?" + day);
        }

    }

    /*
     * 举例1：
     * JDK12中的写法：还可以使用变量接收switch表达式的结果。
     * */
    @Test
    public void test3() {
        Week day = Week.FRIDAY;
        int result = switch (day) {
            case MONDAY -> 1;
            case TUESDAY, WEDNESDAY, THURSDAY -> 2;
            case FRIDAY -> 3;
            case SATURDAY, SUNDAY -> 4;
            default -> throw new RuntimeException("What day is today?" + day);
        };

        System.out.println(result);

    }

    /*
     * 举例1：(在default中返回值5)
     * JDK13中的写法：引入了yield关键字，用于返回指定的数据，结束switch结构。
     * 这意味着，switch表达式(返回值)应该使用yield，switch语句(不返回值)应该使用break。
     *
     * 和return的区别在于：return会直接跳出当前方法，而yield只会跳出当前switch块。
     * */
    @Test
    public void test4() {
        Week day = Week.FRIDAY;
        int result = switch (day) {
            case MONDAY -> {
                yield 1;
            }
            case TUESDAY, WEDNESDAY, THURSDAY -> {

                yield 2;
            }
            case FRIDAY -> {
                yield 3;
            }
            case SATURDAY, SUNDAY -> {
                yield 4;
            }
            default -> {
                System.out.println("值未找到");
                yield 5;
            }
        };

        System.out.println(result);


    }

    @Test
    public void test5() {
        Week day = Week.FRIDAY;
        int result = switch (day) {
            case MONDAY:
                yield 1;
            case TUESDAY, WEDNESDAY, THURSDAY:
                yield 2;
            case FRIDAY:
                yield 3;
            case SATURDAY, SUNDAY:
                yield 4;
            default:
                yield 5;
        };

        System.out.println(result);

    }
```

```java
    public static void main(String[] args) {
        System.out.println(formatter(12));
        System.out.println(formatterSwitchPattern(12));

    }
    /*
    * JDK17之前
    * */
    static String formatter(Object o) {
        String formatted = "unknown";
        if (o instanceof Integer i) {
            formatted = "int " + i;
        } else if (o instanceof Long l) {
            formatted = "long " + l;
        } else if (o instanceof Double d) {
            formatted = "double " + d;
        } else if (o instanceof String s) {
            formatted = "String " + s;
        }
        return formatted;
    }

    /*
    * JDK17中switch的模式匹配
    * */
    static String formatterSwitchPattern(Object o) {

        String formatted = switch(o){
            case Integer i:
                yield "int " + i;
            case Long l:
                yield "long " + l;
            case Double d:
                yield "double " + d;
            case String s:
                yield "String " + s;
            default:
                yield o.toString();

        };

        return formatted;
    }
```

#### block文本块

> JDK13的预览特性
> JDK14中二次预览特性
> JDK15中功能转正

```java
    //对比1：
    @Test
    public void test1() {
        String info = "<html>\n" +
                "  <body>\n" +
                "      <p>Hello, 尚硅谷</p>\n" +
                "  </body>\n" +
                "</html>";
        System.out.println(info);

    }

    @Test
    public void test2() {
        String info = """
                <html>
                  <body>
                      <p>Hello, 尚硅谷</p>
                  </body>
                </html>
                """;
        System.out.println(info);
    }



    //对比2
    @Test
    public void test3() {
        String myJson = "{\n" +
                "    \"name\":\"Song Hongkang\",\n" +
                "    \"gender\":\"男\",\n" +
                "    \"address\":\"www.atguigu.com\"\n" +
                "}";
        System.out.println(myJson);
    }

    @Test
    public void test4() {
        String myJson1 = """
                {
                    "name":"Song Hongkang",
                    "gender":"男",
                    "address":"www.atguigu.com"
                }""";
        System.out.println(myJson1);
    }

    //对比3
    @Test
    public void test5() {
        String query = "SELECT employee_id,last_name,salary,department_id\n" +
                "FROM employees\n" +
                "WHERE department_id IN (40,50,60)\n" +
                "ORDER BY department_id ASC";
    }

    @Test
    public void test6() {
        String newQuery = """
                        SELECT employee_id,last_name,salary,department_id
                        FROM employees
                        WHERE department_id IN (40,50,60)
                        ORDER BY department_id ASC
                """;
        System.out.println(newQuery);
    }
    /*
    * JDK14新特性：
    *  \:取消换行操作
    *  \s:表示一个空格
    * */
    @Test
    public void test7(){
        String newQuery1 = """
                SELECT id,name,email \
                FROM customers\s\
                WHERE id > 4 \
                ORDER BY email DESC
                """;
        System.out.println(newQuery1);

    }
```

#### Record类

> JDK14中预览特性
> JDK15中第二次预览特性
> JDK16中转正特性

> Record类型的父类都为`java.lang.Record`

> 具体来说：当你用`record` 声明一个类时，该类将自动拥有以下功能：
>
> - 获取成员变量的简单方法，比如例题中的 name() 和 partner() 。注意区别于我们平常getter()的写法。
> - 一个 equals 方法的实现，执行比较时会比较该类的所有成员属性。
> - 重写 hashCode() 方法。
> - 一个可以打印该类所有成员属性的 toString() 方法。
> - 只有一个构造方法。

##### 没有record结构前的写法

```java
public class Order {
    //属性：private final修饰
    private final int orderId;
    private final String orderName;

    //构造器中初始化属性
    public Order(int orderId, String orderName) {
        this.orderId = orderId;
        this.orderName = orderName;
    }

    //提供属性的getter方法
    public int orderId() {
        return orderId;
    }

    public String orderName() {
        return orderName;
    }

    //equals()和hashCode()
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Order order = (Order) o;
        return orderId == order.orderId && Objects.equals(orderName, order.orderName);
    }

    @Override
    public int hashCode() {
        return Objects.hash(orderId, orderName);
    }

    //toString()
    @Override
    public String toString() {
        return "Order{" +
                "orderId=" + orderId +
                ", orderName='" + orderName + '\'' +
                '}';
    }
}
```

##### Record写法

```java
public record Order1(int orderId,String orderName) {
}
```

```java
public record Person(int id,String name) {

    //- 还可以在record声明的类中定义静态字段、静态方法、构造器或实例方法。
    static String info = "我是一个人";

    public static void show(){
        System.out.println("我是一个人！");
    }

    public Person(){
        this(0,null);
    }

    public void eat(){
        System.out.println("人吃饭");
    }



    //- 不能在record声明的类中定义实例字段；类不能声明为abstract；不能声明显式的父类等。
    //    final int age;
}

//abstract record Dog(int id){}

//record Cat(int id) extends Thread{}

//class Student extends Person{}
```

#### sealed类

> JDK15的预览特性
> JDK16二次预览特性
> JDK17转正特性

> sealed出现的原因主要是不想被胡乱地继承

```java
//Person是一个密封类，可以被指定的子类所继承。非指定的类不能继承Person类
public sealed class Person permits Student,Teacher,Worker{
}

//要求指定的子类必须是final、sealed、non-sealed三者之一
final class Student extends Person{} //Student类不能被继承了。

sealed class Teacher extends Person permits SeniorTeacher{} //Teacher类只能被指定的子类继承

non-sealed class SeniorTeacher extends Teacher{
}

non-sealed class Worker extends Person{}  //Worker类在继承时，没有任何限制

class WatchWorker extends Worker{}

//class Farmer extends Person{}
```

#### Optional类

> 主要是防止空指针异常，有“备胎”

>JDK8的新特性，JDK9-11中新增了一些方法。
>
>1. 为什么需要Optional类？
>为了避免代码中出现空指针异常。
>
>
>2. 如何实例化？
>`static <T> Optional<T> ofNullable(T value)`：用来创建一个Optional实例，value可能是空，也可能非空
>
>
>3. 常用方法
>`T orElse(T other) ：orElse(T other) 与ofNullable(T value)`配合使用，如果Optional容器中非空，就返回所包装值，
>如果为空，就用orElse(T other)other指定的默认值（备胎）代替

```java
    @Test
    public void test(){

        String star = "迪丽热巴";
        star = null;

        //使用Optional避免空指针的问题
        //1. 实例化：
        //ofNullable(T value)`：用来创建一个Optional实例，value可能是空，也可能非空
        Optional<String> optional = Optional.ofNullable(star);

        //orElse(T other):如果Optional实例内部的value属性不为null，则返回value。如果value为null，
        //则返回other。
        String otherStar = "杨幂";
        String finalStar = optional.orElse(otherStar);

        System.out.println(finalStar.toString());


    }

    @Test
    public void test2(){
        String star = "迪丽热巴";
        Optional<String> optional = Optional.ofNullable(star);
        //get():取出内部的value值。是null就会报异常了
        System.out.println(optional.get());
    }

```



# 附录

## 关于字符集

> 注：在中文操作系统里，`ANSI`就代表着`GBK`

### 字符集

- **编码与解码**

计算机中储存的信息都是用`二进制数`表示的，而我们在屏幕上看到的数字、英文、标点符号、汉字等字符是二进制数转换之后的结果。按照某种规则，将字符存储到计算机中，称为`编码` 。反之，将存储在计算机中的二进制数按照某种规则解析显示出来，称为`解码` 。

- **字符编码（Character Encoding）** : 就是一套自然语言的字符与二进制数之间的对应规则。
- **字符集**：也叫编码表。是一个系统支持的所有字符的集合，包括各国家文字、标点符号、图形符号、数字等。

### ASCII码

- ASCII码（American Standard Code for Information Interchange，美国信息交换标准代码）：上个世纪60年代，美国制定了一套字符编码，对`英语字符`与二进制位之间的关系，做了统一规定。这被称为ASCII码。
- ASCII码用于显示现代英语，主要包括控制字符（回车键、退格、换行键等）和可显示字符（英文大小写字符、阿拉伯数字和西文符号）。
- 基本的ASCII字符集，使用7位（bits）表示一个字符（最前面的1位统一规定为0），共`128个`字符。比如：空格“SPACE”是32（二进制00100000），大写的字母A是65（二进制01000001）。
- 缺点：不能表示所有字符。

![image-20220513095907601](Java.assets/image-20220513095907601.png)

### ISO-8859-1字符集

- 拉丁码表，别名Latin-1，用于显示欧洲使用的语言，包括荷兰语、德语、意大利语、葡萄牙语等
- ISO-8859-1使用单字节编码，兼容ASCII编码。

### GBxxx字符集

- GB就是国标的意思，是为了`显示中文`而设计的一套字符集。
- **GB2312**：简体中文码表。一个小于127的字符的意义与原来相同，即向下兼容ASCII码。但两个大于127的字符连在一起时，就表示一个汉字，这样大约可以组合了包含`7000多个简体汉字`，此外数学符号、罗马希腊的字母、日文的假名们都编进去了，这就是常说的"全角"字符，而原来在127号以下的那些符号就叫"半角"字符了。
- **GBK**：最常用的中文码表。是在GB2312标准基础上的扩展规范，使用了`双字节`编码方案，共收录了`21003个`汉字，完全兼容GB2312标准，同时支持`繁体汉字`以及日韩汉字等。
- **GB18030**：最新的中文码表。收录汉字`70244个`，采用`多字节`编码，每个字可以由1个、2个或4个字节组成。支持中国国内少数民族的文字，同时支持繁体汉字以及日韩汉字等。

### Unicode码

- Unicode编码为表达`任意语言的任意字符`而设计，也称为统一码、标准万国码。Unicode 将世界上所有的文字用`2个字节`统一进行编码，为每个字符设定唯一的二进制编码，以满足跨语言、跨平台进行文本处理的要求。
- Unicode 的缺点：这里有三个问题：
  - 第一，英文字母只用一个字节表示就够了，如果用更多的字节存储是`极大的浪费`。
  - 第二，如何才能`区别Unicode和ASCII`？计算机怎么知道两个字节表示一个符号，而不是分别表示两个符号呢？
  - 第三，如果和GBK等双字节编码方式一样，用最高位是1或0表示两个字节和一个字节，就少了很多值无法用于表示字符，`不够表示所有字符`。
- Unicode在很长一段时间内无法推广，直到互联网的出现，为解决Unicode如何在网络上传输的问题，于是面向传输的众多 UTF（UCS Transfer Format）标准出现。具体来说，有三种编码方案，UTF-8、UTF-16和UTF-32。

### UTF-8

- Unicode是字符集，UTF-8、UTF-16、UTF-32是三种`将数字转换到程序数据`的编码方案。顾名思义，UTF-8就是每次8个位传输数据，而UTF-16就是每次16个位。其中，UTF-8 是在互联网上`使用最广`的一种 Unicode 的实现方式。
- 互联网工程工作小组（IETF）要求所有互联网协议都必须支持UTF-8编码。所以，我们开发Web应用，也要使用UTF-8编码。UTF-8 是一种`变长的编码方式`。它可以使用 1-4 个字节表示一个符号它使用一至四个字节为每个字符编码，编码规则：
  1. 128个US-ASCII字符，只需一个字节编码。
  2. 拉丁文等字符，需要二个字节编码。 
  3. 大部分常用字（含中文），使用三个字节编码。
  4. 其他极少使用的Unicode辅助字符，使用四字节编码。

- 举例

Unicode符号范围  | UTF-8编码方式

```
(十六进制)           | （二进制）

————————————————————|—–—–—–—–—–—–—–—–—–—–—–—–—–—–

0000 0000-0000 007F | 0xxxxxxx（兼容原来的ASCII）

0000 0080-0000 07FF | 110xxxxx 10xxxxxx

0000 0800-0000 FFFF | 1110xxxx 10xxxxxx 10xxxxxx

0001 0000-0010 FFFF | 11110xxx 10xxxxxx 10xxxxxx 10xxxxxx
```

![image-20220525164636164](Java.assets/image-20220525164636164.png)

### 小结

![字符集](Java.assets/字符集.jpg)

> 注意：在中文操作系统上，ANSI（美国国家标准学会、AMERICAN NATIONAL STANDARDS INSTITUTE: ANSI）编码即为GBK；在英文操作系统上，ANSI编码即为ISO-8859-1。

## 常用Java编程技巧

### Scanner

**案例：**小明注册某交友网站，要求录入个人相关信息。如下：

请输入你的网名、你的年龄、你的体重、你是否单身、你的性别等情况。

```java
//① 导包
import java.util.Scanner;

public class ScannerTest1 {

    public static void main(String[] args) {
        //② 创建Scanner的对象
        Scanner scanner = new Scanner(System.in);//System.in默认代表键盘输入
        
        //③根据提示，调用Scanner的方法，获取不同类型的变量
        System.out.println("欢迎光临你好我好交友网站！");
        System.out.print("请输入你的网名：");
        String name = scanner.next();		//阻塞方法，有可能会抛异常

        System.out.print("请输入你的年龄：");
        int age = scanner.nextInt();

        System.out.print("请输入你的体重：");
        double weight = scanner.nextDouble();

        System.out.print("你是否单身（true/false)：");
        boolean isSingle = scanner.nextBoolean();

        System.out.print("请输入你的性别：");
        char gender = scanner.next().charAt(0);//先按照字符串接收，然后再取字符串的第一个字符（下标为0）

        System.out.println("你的基本情况如下：");
        System.out.println("网名：" + name + "\n年龄：" + age + "\n体重：" + weight + 
                           "\n单身：" + isSingle + "\n性别：" + gender);
        
        //④ 关闭资源
        scanner.close();	//为了防止内存泄漏
    }
}
```

### 随机数

> 1、Math类的random()的调用，会返回一个[0,1)范围的一个double型值
>
> 2、Math.random() * 100  --->  [0,100)
>       (int)(Math.random() * 100)	---> [0,99]
>       (int)(Math.random() * 100) + 5  ----> [5,104]
>
> 3、如何获取`[a,b]`范围内的随机整数呢？`(int)(Math.random() * (b - a + 1)) + a`

例：

```java
class MathRandomTest {
	public static void main(String[] args) {
		double value = Math.random();
		System.out.println(value);

		//[1,6]
		int number = (int)(Math.random() * 6) + 1; //
		System.out.println(number);
	}
}
```

## idea常见选项

### 安装时

![1688651563952](Java.assets/1688651563952.png)

### Project Structure

![1688651626382](Java.assets/1688651626382.png)

![1688651639218](Java.assets/1688651639218.png)

![1688651652152](Java.assets/1688651652152.png)

### 常见设置

![1688651718210](Java.assets/1688651718210.png)

![1688651724069](Java.assets/1688651724069.png)

![1688651729091](Java.assets/1688651729091.png)

![1688651741698](Java.assets/1688651741698.png)

![1688651819810](Java.assets/1688651819810.png)

* 自动导包

  ![1688651917861](Java.assets/1688651917861.png)

  ![1688651929310](Java.assets/1688651929310.png)

* 字符编码设置

  ![1688651957884](Java.assets/1688651957884.png)

* 缓存的清除

  ![1688652001816](Java.assets/1688652001816.png)

  ![1688652017399](Java.assets/1688652017399.png)

### 外观设置

![1688651771413](Java.assets/1688651771413.png)

![1688651776218](Java.assets/1688651776218.png)

![1688651782828](Java.assets/1688651782828.png)

![1688651791880](Java.assets/1688651791880.png)

![1688651832876](Java.assets/1688651832876.png)

![1688651841106](Java.assets/1688651841106.png)

### module常用操作

#### 创建module

![1688652101036](Java.assets/1688652101036.png)

![1688652123385](Java.assets/1688652123385.png)

![1688652127888](Java.assets/1688652127888.png)

#### 删除module

![1688652159352](Java.assets/1688652159352.png)

![1688652163923](Java.assets/1688652163923.png)

#### remove后重新添加module

![1688652206691](Java.assets/1688652206691.png)

![1688652212040](Java.assets/1688652212040.png)

![1688652224122](Java.assets/1688652224122.png)

![1688652230128](Java.assets/1688652230128.png)

### idea快捷键

详情见[<font color="violet">IntelliJ IDEA 常用快捷键一览表.md</font>](./相关资料/第04章_IDEA的安装与使用/IntelliJ IDEA 常用快捷键一览表.md)

**以下是易忘快捷键**

| 说明                                                         | 快捷键           |
| ------------------------------------------------------------ | ---------------- |
| 切换到下一行代码空位-start new line                          | shift + enter    |
| 切换到上一行代码空位-start new line before current           | ctrl +alt+ enter |
| 向上移动一行-move line up                                    | alt+shift+↑      |
| 向下移动一行-move line down                                  | alt+shift+↓      |
| 方法的形参列表提醒-parameter info                            | ctrl+p           |
| 抽取代码重构方法-extract method ...                          | ctrl+alt+m       |
| 选中的结构的大小写的切换-toggle case                         | ctrl+shift+u     |
| 退回到前一个编辑的页面-back                                  | ctrl+alt+←       |
| 进入到下一个编辑的页面-forward                               | ctrl+alt+→       |
| 打开的类文件之间切换-select previous/next tab                | alt+←/→          |
| 光标选中指定的类，查看继承树结构-Type Hierarchy              | ctrl+h           |
| 查看方法文档-quick documentation                             | ctrl+q           |
| 类的UML关系图-show uml popup                                 | ctrl+alt+u       |
| 定位某行-go to line/column                                   | ctrl+g           |
| 回溯变量或方法的来源-go to implementation(s)                 | ctrl+alt+b       |
| 折叠方法实现-collapse all                                    | ctrl+shift+ -    |
| 展开方法实现-expand all                                      | ctrl+shift+ +    |
| 全项目搜索文本-find in path ...<br />![1689665489837](Java.assets/1689665489837.png) | ctrl+shift+f     |

**快捷键的查找**

![1689665560318](Java.assets/1689665560318.png)

### debug

详情见[<font color="violet">第04章_IDEA的安装与使用（下）</font>](./相关资料/第04章_IDEA的安装与使用/第04章_IDEA的安装与使用（下）)

#### 常见按钮

##### console

![1689665870607](Java.assets/1689665870607.png)

##### 跳到下一个断点的位置

![1689665884355](Java.assets/1689665884355.png)

##### 直接执行到光标的位置

![1689665953430](Java.assets/1689665953430.png)

##### 一键查看有哪些位置有断点

![1689666440897](Java.assets/1689666440897.png)

##### 一键让全部断点失效

![1689666505313](Java.assets/1689666505313.png)

##### 强制终止

> 当发现问题后，有时候不想让执行之后的代码，就可以选择强制终止

![1689666902132](Java.assets/1689666902132.png)



#### 断点类型

**属性断点**

![1689666712827](Java.assets/1689666712827.png)



## 基本常识

### java中地址的含义

![1688743977754](Java.assets/1688743977754.png)

![1688744778515](Java.assets/1688744778515.png)

## 报错

### 编译报错

#### 局部变量未赋初始值后续参与运算

![1688744353965](Java.assets/1688744353965.png)

## IDEA常用插件

### jclasslib

用来查看字节码文件

![1689245570006](Java.assets/1689245570006.png)

![1689245582796](Java.assets/1689245582796.png)

![1689245597422](Java.assets/1689245597422.png)

> * `<init>`方法在字节码文件中可以看到。
> * 每个`<init>`方法都对应着一个类的构造器。（类中声明了几个构造器就会有几个`<init>`）
> * 编写的代码中的构造器在编译以后就会以`<init>`方法的方式呈现
> * `<init>`方法内部的代码包含了实例变量的显示赋值、代码块中的赋值和构造器中的代码。
> * `<init>`方法用来初始化当前创建的对象的信息的。

## 单例设计模式

> 设计模式
>
> ![1689513613200](Java.assets/1689513613200.png)

> 单例模式：对某个类只能存在一个实例对象。
>
> 饿汉式vs懒汉式
>
> * 饿汉式：“立即加载”,随着类的加载，当前的唯一实例就创建了
> * 懒汉式："延迟加载",在需要使用的时候，进行创建。
>
> 优缺点：
>
> * 饿汉式：（优点）写法简单，由于内存中较早加载，使用更方便、更快。是线程安全的。 （缺点）内存中占用时间较长。
> * 懒汉式：（缺点）线程不安全 （放到多线程章节时解决）（优点）在需要的时候进行创建，节省内存空间。

### 饿汉式

```java
class Singleton {
    // 1.私有化构造器
    private Singleton() {
    }

    // 2.内部提供一个当前类的实例
    // 4.此实例也必须静态化
    private static Singleton single = new Singleton();

    // 3.提供公共的静态的方法，返回当前类的对象
    public static Singleton getInstance() {
        return single;
    }
}
```

### 懒汉式

```java
class Singleton {
    // 1.私有化构造器
    private Singleton() {
    }
    // 2.内部提供一个当前类的实例
    // 4.此实例也必须静态化
    private static Singleton single;
    // 3.提供公共的静态的方法，返回当前类的对象
    public static Singleton getInstance() {
        if(single == null) {
            single = new Singleton();
        }
        return single;
    }
}
```

## main()方法剖析

> 理解：
>
> * 1：看做是一个普通的静态方法
> * 2：看做是程序的入口，格式是固定的。
>
> 与控制台交互：
>
> * 方式1：使用Scanner
> * 方式2：使用main()的形参进行传值。

idea中使用main()的形参进行传递。

![1689514839664](Java.assets/1689514839664.png)

![1689514964241](Java.assets/1689514964241.png)

## JUnit单元测试

### 导相关的依赖jar包

![1689616150044](Java.assets/1689616150044.png)

![1689616169783](Java.assets/1689616169783.png)

![1689616265238](Java.assets/1689616265238.png)

**其它模块选择JUnit依赖**

![1689616330333](Java.assets/1689616330333.png)

![1689616343344](Java.assets/1689616343344.png)

![1689616357045](Java.assets/1689616357045.png)

![1689616377638](Java.assets/1689616377638.png)

### 测试方法要注意的点

JUnit4版本，要求@Test标记的方法必须满足如下要求：

- 所在的类必须是public的，非抽象的，包含唯一的无参构造器。
- @Test标记的方法本身必须是public，非抽象的，非静态的，void无返回值，()无参数的。

Scanner的输入在JUnit中默认并不能实现，需要额外设置才能使用

```
-Deditable.java.test.console=true
```

![1689643592458](Java.assets/1689643592458.png)

![1689643660021](Java.assets/1689643660021.png)

![1689643726047](Java.assets/1689643726047.png)

**如果上述位置设置不成功，需要继续修改如下位置**

修改位置1：IDEA安装目录的bin目录（例如：`D:\develop_tools\IDEA\IntelliJ IDEA 2022.1.2\bin`）下的idea64.exe.vmoptions文件。 

修改位置2：C盘的用户目录`C:\Users\用户名\AppData\Roaming\JetBrains\IntelliJIdea2022.1` 下的idea64.exe.vmoptions`件。

### 将test单元测试设置为一个模板

#### 创建模板组

![1689650713502](Java.assets/1689650713502.png)

![1689650638354](Java.assets/1689650638354.png)

#### 创建模板

![1689650690433](Java.assets/1689650690433.png)

![1689651204768](Java.assets/1689651204768.png)

![1689651281402](Java.assets/1689651281402.png)