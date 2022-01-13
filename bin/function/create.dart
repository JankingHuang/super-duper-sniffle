void printInfo() {
  print('Hello, World');
}

//返回类型 与c语言一样。返回类型不确定可以使用dynamic
int getNum() {
  return 1;
}

void main(List<String> args) {
  printInfo();

  //匿名函数
  var myPrint = (value) {
    print(value);
  };

  List fruits = ['苹果', '香蕉', '猕猴桃'];
  fruits.forEach(myPrint);

  //箭头函数,函数体不能写分号，大括号可以省略
  fruits.forEach((element) => {print(element)});

  //立即执行函数
  ((int n) {
    print(n);
  })(17);
}
