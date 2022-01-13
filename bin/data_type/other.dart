void main(List<String> args) {
  var str = '😍';
  //有可能不一样，有缓存
  print(str);
  print(str.length); // UTF-16
  print(str.runes.length); //UTF-32
  //Runes 可以将UTF-32 字符集表示的内容转化成符号

  Runes input = Runes('\u{1f680}');
  print(String.fromCharCodes(input));

  //Symbal
  var a = #abc;
  print(a);

  //通过构造函数
  var b = Symbol('abc');
  print(b);

  print(#abc == Symbol('abc'));

  //声明动态类型的变量
  dynamic foo = 'bar';

  print(foo);

  foo = 123;
  print(foo);
}
