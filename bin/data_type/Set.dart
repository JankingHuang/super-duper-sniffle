void main(List<String> args) {
  //自变量
  var nums = <int>{1, 2, 3};
  print(nums);

  //构造函数
  var fruits = new Set();
  fruits.add("香蕉");
  fruits.add("苹果");
  fruits.add("橘子");

  print(fruits);

  print(fruits.toList());
  //list 也可以条用toSet() 转化成set ，会自动去重。

  var caocao = new Set();
  caocao.addAll(['张辽', '司马懿', '关羽']);

  var liubei = new Set();
  liubei.addAll(["关羽", "张飞", "诸葛亮"]);

  //求交集
  print(caocao.intersection(liubei));

  //求并集
  print(caocao.union(liubei));

  //求差集
  print(caocao.difference(liubei));

  //返回第一元素
  print(caocao.first);

  //放回最后一个
  print(caocao.last);

  print(caocao.last);
}
