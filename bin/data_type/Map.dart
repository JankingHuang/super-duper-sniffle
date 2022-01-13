void main(List<String> args) {
  var person = {'name': '张三', 'age': 20};

  print(person);

  var p = {}; //map
  p['name'] = '李四';
  p['age'] = 22;
  print(p);

  print(p['name']);

  //key 需要存在才能访问
  print(p.containsKey('name'));
  print(p.containsKey('aaa'));

  // 赋值
  //如果key 不存在就赋值
  p.putIfAbsent('gender', () => '男');
  print(p);

  p.putIfAbsent('gender', () => '女');
  print(p);

  //获取map中所有key
  print(p.keys);

  // 获取map所用value
  print(p.values);

  //根据条件删除
  p.removeWhere((key, value) => key == 'gender');
  print(p);
}
