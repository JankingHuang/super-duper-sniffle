void main(List<String> args) {
  Person p = Person();

  print(p.name);

  p.getInfo();
}

//dart 中所有内容都是对象
class Person {
  String name = '张三';

  void getInfo() {
    print('我是$name');
  }
}
