void main(List<String> args) {
  var str = 'ð';
  //æå¯è½ä¸ä¸æ ·ï¼æç¼å­
  print(str);
  print(str.length); // UTF-16
  print(str.runes.length); //UTF-32
  //Runes å¯ä»¥å°UTF-32 å­ç¬¦éè¡¨ç¤ºçåå®¹è½¬åæç¬¦å·

  Runes input = Runes('\u{1f680}');
  print(String.fromCharCodes(input));

  //Symbal
  var a = #abc;
  print(a);

  //éè¿æé å½æ°
  var b = Symbol('abc');
  print(b);

  print(#abc == Symbol('abc'));

  //å£°æå¨æç±»åçåé
  dynamic foo = 'bar';

  print(foo);

  foo = 123;
  print(foo);
}
