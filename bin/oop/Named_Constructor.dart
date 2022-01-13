class Point {
  late num x, y;

  //普通构造函数
  Point(this.x, this.y);

  //命名构造函数
  Point.origin() {
    x = 0;
    y = 0;
  }

  Point.fromJson({x: 0, y: 0}) {
    this.x = x;
    this.y = y;
  }
}

void main(List<String> args) {
  //默认坐标
  Point p1 = Point.origin();
  print(p1.x);

  //手动设置坐标，通过命名构造函数，可以提高清晰度
  Point p2 = Point.fromJson(x: 6, y: 6);
  print(p2.x);
}
