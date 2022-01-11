void main(List<String> args) {
  String str1 = "hello";

  String str2 = 'hello';

  String str3 = '''Hello
  world''';

//拼接
  print(str1 + str2);
  print("$str1 $str2");

  //字符串分割
  print(str1.split(' '));

  //字符串裁切
  print('   abc  '.trim());

  //判断字符串是否为空
  print(''.isEmpty);
  print(''.isNotEmpty);

  //替换
  print(str1.replaceAll('world', 'dart'));

  //regular
  print('h1k2d3f4'.replaceAll(RegExp(r'\d+'), '_'));

  //通过正则匹配
  var isPhone = RegExp(r'^1\d{10}$');

  print(isPhone.hasMatch('12222222222'));
}
