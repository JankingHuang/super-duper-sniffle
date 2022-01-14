Dart 简介
* 类型安全
* 面向对象

基础语法
* 声明函数不需要关键字。
* 函数和参数前面都有类型声明，与c语言一致。
* 打印使用print。
* 每行代码结束时，必须要有分号。
* 字符串通过引号包起来，支持模板字符串。
* main是入口函数
* 用var 声明的变量，其数据类型是动态的。
* 三斜线为文档注释，可使用dartdoc 生成文档。

变量
* 变量是一个引用，dart万物皆对象，变量存储的是对象的引用。
* 使用var 或 dynamic  不明确变量类型。
* 大小写敏感。
* 变量的默认值是null。
* 不会隐式转换。

常量
* const 和final 声明
* 不能把运行时的值分配给 const。
* const 用来声明编译时，能确定的值。
* final 用来声明运行时，能确定的值。
* 声明都不能更改。

数据类型
* Number(包含int、double 与c语言一致)。
* String(单引号、双引号都可以，三个引号可以包含换行符；r'正则表达式')。
* Bolean(bool 关键字修饰， 判断时需要显示的检查布尔值(使用 ==))
* List(dart中数组）
* * 字面量方式
* * List list = []; 不限制元素数据类型。
* * List list = <int>[]; 限定
* * 构造函数方式
* * List list = new List.empty();
* * List list = new List.filled(3,0); 填充长度为3 元素为0.
* * 扩展操作符
* * var list = {1，2，3}；
* * var list2 = [0,...list]; // [0,1,2,3]
* * List 遍历
* * forEach() 遍历列表
* * map() 遍历并处理元素，然后生成新的列表
* * where() 放回满足条件的数据
* * any() 只要有一项满足条件，即返回true
* * every() 每项都需要满足条件，即返回true
* Set
* * 一个无序，元素唯一的集合
* * 有字面量和构造函数两种声明方法（字面量中用大括号）
* * 无法通过下表取值
* * 具有集合的特有操作（求交集、并集、差集）
* Map
* * 无序的键值对(key-value) 映射。通常被称作哈希或字典。
* * 声明的方式
* * var map = {key1: value1, key2: value2};
* * var map = new Map();
* * map['key'] = value;
* 其他
* * runes(符文)
* * Runnes 对象是一个32 位字符对象，它可以把文字转化成符号表情或特定的文字
* * print('\u{1f44d}')
* * https://copychar.cc

* * symbol
* * 在dart中符号用#开头来表示的标识符


* 运算符
* * 地板除(~/)
* * 类型判断运算符(is | is!)
* * 避空运算符(?? | ??=)
* * 条件属性访问(?.)
* * 级联运算符(..)
* * * myObject.myMethod(); 返回myMethod的返回值
* * * myObject..myMethod(); 返回myObject对象引用


* 函数
* * 直接声明，和c语言一样
* * 箭头函数
* * 函数题体只能写一行且不能带有结束的分号
* * 箭头函数，只是函数的一个简写形式。
* * 匿名函数
* * 立即执行函数

* 函数参数
* * 参数类型 参数名称
* 可选参数
* * 放在必须参数后面。
* * 通过中括号（[]）包裹起来。
* * 带默认值的可选参数。
* 名称参数
* * 用大括号（{}）包裹起来。
* * 调用函数时，明名参数的名称与声明函数中的名称保持一致。

* 闭包
* * 使用时机： 即想重复使用变量，又不想环境被污染。()
* * 实现原理：外层函数被调用后，外层函数的作用域对象(AO)被内层函数引用着，导致外层函数的作用与对象无法释放，从而形成闭包。

* 异步函数
* * 异步调用通过Future 来实现。
* * async 函数返回一个Future，await用于等待Future。 


* 类
* 面向对象，基本类似。dart 不需要写new关键字。
* * 普通构造函数，（与面向对象一致，有一种写法不一样）
* * 命名构造函数
* * * 使用命名构造器(类名.函数名)实现多个构造器，可以提供额外的清晰度。
* * 常量构造函数
* * * 如果类生成的对象不会改变，可以通过常量构造函数使这些对象成为编译时常量。提高运行效率。
* * 工厂构造函数（单例模式）
* * * 通过factory声明，工厂函数不会自动生成实例，而是通过代码来决定返回的示例。

* 访问修饰符
* 默认公开，私有_开头。
* 只有把类单独抽离出去，私有方法才起作用。 一般放在lib目录下。

* getter 与 setter
* * Getter(获取器)是通过get关键字修饰的方法。
* * 函数没有小括号，访问时也没有小括号(像访问属性一样访问方法)
* * Setter(修改器)是通过set关键字修饰的方法
* * 访问时，像设置属性一样给函数传递参数。

* 初始化列表
* * 作用： 在构造函数中设置属性的默认值。
* * 时机： 在构造函数执行之前执行。
* * 语法： 使用逗号分隔初始化表达式。
* * 场景： 常用于设置final常量的值。

* static
* * 与面向对象一致，不需要实例化，提高程序性能。
* * 静态方法不能访问非静态成员，非静态方法可以访问静态成员。
* * 静态方法中不能使用this关键字。

* 元数据
* * 以@开头，可以给代码表姐一些额外的信息。
* * 元数据可以用在库，类，构造器，函数，字段，参数或变量声明前面。
* * @override(重写)、required(必填)、deprecated(弃用)

* 继承(与java 一致)

* 抽象类
* * 抽象类是作用abstract关键字修饰的类
* * 抽象类的作用是充当普通类的模板，约定一些必要的属性和方法。
* * 抽象方法是指没有方法体的方法
* * 抽象类中可以又抽象方法，也可以没有抽象方法。
* * 抽象类不能被实例化（不能被new）
* * 抽象类可以被普通类继承（extends）
* * 如果普通类继承抽象类，必须重写抽象类中的所有的抽象方法。

* 接口
* * 不需要是interface关键声明，接口可以是任意类，一般使用抽象类做接口。
* * 一个类可以实现多个接口，多个接口用逗号分割。
* * 接口可以看成一个个小零件，类实现接口就相当于组装零件。


* 混入(Mixin)
* * 作为Mixin的类只能继承自Object(dart 中顶级类)，不能继承其他类。
* * 作为Mixin的类不能有构造函数。
* 使用mixin关键字mixin声明。
* 普通类通过with使用混入。
* 后引入发混入，会覆盖之前混入中重复的内容。

* 泛型(与C++一致)
* * 使用泛型能减少重复代码。

* 枚举(与C++一致)


* Dart库与生态
* * Dart中的库就是具有特定功能的模块
* * 可能包含当个文件，可以能包含多个文件。

* 按照库的作者进行划分，库可以分为三类
* * 自定义库(工程师自己写的)。
* * 系统库(Dart中自带的)。
* * 第三方库(Dart生态中的)。

* 通过library声明库
* * 每个main.dart 默认隐藏了一个library的声明。
* * _表示库内可见（私有）

* import 引入库
* * 自定义库：(import '库的位置/库名称.dart')
* * 官方库：(import 'dart:库名称')
* 引入部分库
* * 包含引入(show)
* * 排除引入(hide)
* 引入冲突处理
* * 通过as 关键字，解决命名冲突。

* 延迟引入(懒加载)
* * 使用deferred as 关键字来标识需要加载的库。
* * 调用loadLibrary，在使用时加载。