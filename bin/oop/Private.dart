class Person {
  late String name;

  num _money = 100;

  num getMoney() {
    return this._money;
  }

  Person(this.name);
}

void main(List<String> args) {
  var p = Person("张三");

  print(p.name);

  print(p._money);
  //下划线为生效，只有把类单独抽离出去，私有方法才起作用。 一般放在lib目录下。
}
