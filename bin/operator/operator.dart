void main(List<String> args) {
  //地板除号
  print(7 ~/ 4);

  //类型判断运算符
  List list = [];

  if (list is List) {
    print('list is List');
  } else {
    print('list is not List');
  }

  if (list is! List) {
    print("不是列表");
  } else {
    print("是列表");
  }

  // 避空运算符
  // 第一空 就返回 第一个，否则返回第一个。
  print(1 ?? 3);
  print(null ?? 12);

  var foo;
  print(foo ?? 0);

  var a;
  if (a == null) {
    a = 3;
  }
  //等价与上面
  a ??= 3;
  print(a);

  //条件属性运输符， 保护可能为空的属性
  var m = Map();
  print(m.length);

  var obj;
  print(obj?.length);

  //级联运算符
  Set s = Set();
  s.add(1);
  s.add(2);
  s.add(3);
  s.remove(2);

  print(s);

  Set s1 = Set();
  s1
    ..add('a')
    ..add('b')
    ..add('c')
    ..add('d');
  print(s1);
}
