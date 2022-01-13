void main(List<String> args) {
  List l1 = ['a', 'b', 'c', 1, 2, 3];
  print(l1);

//限定元素类型
  List l2 = <int>[1, 2, 3];
  print(l2);

  //growable 默认false 即list为规定参数
  //growable 为明明参数
  var l3 = List.empty(growable: true);
  print(l3);

  //length = 3, element = 6;
  var l4 = List.filled(3, 6);
  print(l4);

  //扩展操作符号
  var l5 = [0, ...l4];
  print(l5);

  var l6;
  // ? 避免l6 不能扩展
  var l7 = [0, ...?l6];
  print(l7);

  //列表的反转,返回结果不是list。toList 可转换
  print(l1.reversed);

  //添加元素
  l3.addAll([4, 5, 6]);
  print(l3);

  //根据下表删除元素
  l3.removeAt(1);
  print(l3);

//index,element
  l3.insert(1, 9);
  print(l3);

  //合并元素
  List words = ['Hello', 'World'];
  print(words.join('-'));
  //split 反向操作
  print(words);
}
