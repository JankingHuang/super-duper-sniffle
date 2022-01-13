class Point {
  late num x;
  late num y;

  Point(this.x, this.y);
}

//常量构造函数
class ImmutablePoint {
  //属性必须通过 final 声明,且不能写函数提
  final num x;
  final num y;

  const ImmutablePoint(this.x, this.y);
}

void main(List<String> args) {
  var p1 = Point(1, 2);
  var p2 = Point(1, 2);

  print(p1 == p2);

  //常量构造函数，可以当作普通钩爪函数使用
  var p3 = ImmutablePoint(1, 2);
  var p4 = ImmutablePoint(1, 2);

  print(p3 == p4);

  //声明不可变对象，必须通过const 关键字，编译期以确定，
  var p5 = const ImmutablePoint(1, 2);
  var p6 = const ImmutablePoint(1, 2);

  //
  print(p5 == p6);
}
