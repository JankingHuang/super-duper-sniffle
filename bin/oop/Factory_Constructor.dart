class Person {
  late String name;

  static late Person instance;

  //工厂构造函数中，不能使用this关键字
  //工厂构造函数不能实例化操作
  factory Person([String name = "刘备"]) {
    if (Person.instance == null) {
      Person.instance = Person.newSelf(name);
    }
    return Person.instance;
  }

  //命名构造函数
  Person.newSelf(this.name);
}

void main(List<String> args) {
  Person p1 = Person("关羽");
  print(p1);
}
