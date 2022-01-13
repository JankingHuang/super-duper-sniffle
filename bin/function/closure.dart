var globalNum = 100;
void main(List<String> args) {
  printInfo() {
    var localNum = 10;
    localNum--;
    print(localNum);
    print(globalNum);
  }

  printInfo();
  printInfo();
  //多次调用都是9，locaNum 出了作用域就释放

  //使用闭包，既可以重复使用money
  parent() {
    // 这money 同时时局部变量，避免空间污染
    var money = 1000;
    return () {
      money -= 100;
      print(money);
    };
  }

  var p = parent();
  p();
  p();
  p();
}
