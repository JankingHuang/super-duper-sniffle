class SomeBaseClass {}

//限制传入参数 必须是SombaseClass类型
class Foo<T extends SomeBaseClass> {
  String toString() => "Instance of 'Foo<$T>'";
}

void main(List<String> args) {
  var s = Foo<SomeBaseClass>();
  print(s);
}
