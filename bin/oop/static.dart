class Person {
  int age = 19;
  static String name = "张三";

  static printInfo() {
    // print(this.name); // 不能通过this关键字，访问静态属性
    print(name);
  }
}

void main(List<String> args) {
  print(Person.name);
  print(Person.printInfo());
}
