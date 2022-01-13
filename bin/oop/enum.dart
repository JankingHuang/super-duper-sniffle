enum Color { red, green, blue }
void main(List<String> args) {
  //通过index 返回具体常量的值
  print(Color.green.index);

  //通过values返回常量列表
  print(Color.values);

  List<Color> colors = Color.values;

  print(colors);

  //通过下表访问
  print(colors[0]);

  //类似于list
}
