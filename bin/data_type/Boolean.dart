void main(List<String> args) {
  bool flag1 = true;
  print(flag1);

  var flag3;
  //需要flag3 == null;
  if (flag3) {
    print("true");
  } else {
    print("false");
  }

  var n1 = 0 / 0;
  print(n1);
  //NaN Not Number;

  print(n1.isNaN);
}
