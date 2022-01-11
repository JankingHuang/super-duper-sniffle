void main(List<String> arguments) {
  int count = 3;
  print(count);

  double price = 3.7;
  print(price);

  //不确定是int 还是 double
  num n1 = 2;
  print(n1);

  //类型转换
  print(n1.toString());
  print(3.8.toInt()); //向下取整

  //四舍五入
  print(3.1415926.round());

  //保留4位小数
  print(3.1415926.toStringAsFixed(4));

  //取余
  print(10.remainder(4));

  // 0: 相同，1：大于： -1：小于
  print(10.compareTo(12));

  //最大公约数
  print(12.gcd(18));

  //科学计数法
  print(1000.toStringAsExponential(2));
}
