class Point {
  late num x, y;

  //普通构造函数，也是默认构造函数,也可以加入参数
  Point() {
    //this 可以省略
    this.x = 0;
    this.y = 0;

    print("Default Constructor");
  }
}

class Apple {
  late num x, y;

  Apple(num x, num y) {
    this.x = x;
    this.y = y;
  }
}

class Person {
  late num x, y;

  //传入的参数，直接赋值给x，y
  Person(this.x, this.y);
}

void main(List<String> args) {}
