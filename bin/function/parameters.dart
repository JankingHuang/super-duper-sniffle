void main(List<String> args) {
  //必填参数
  String userInfo(String name) {
    return '你好:$name';
  }

  String res = userInfo("hello");

  print(res);

  //可选参数,可以给默认值，避免调用为null
  String userInfo1(String name, [int age = 0]) {
    return '你好:$name, 年龄:$age';
  }

  //命名参数
  String userInfo2(String name, {int age = 0}) {
    return '你好:$name, 年龄:$age';
  }

  String res2 = userInfo2('张三', age: 20);
  print(res2);

  //函数参数
  var myPrint = (value) {
    print(value);
  };

  //匿名函数myPrint 传递给函数forEach
  List fruits = ['apple', 'banner'];
  fruits.forEach(myPrint);
}
