class Father {
  String name = '刘备';
  num money = 10000;

  say() {
    print("我是$name");
  }
}

//可以单独写文件，需要引入包就可以
class Son extends Father {
  // Son(String job) : super(job);
  @override
  say() {
    super.say();
    print("我是刘禅");
  }
}

void main(List<String> args) {
  var f = Father();
  print(f.name);

  var s = Son();
  print(s.name);
  print(s.money);
  print(s.say());
}
