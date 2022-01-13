class MixinA {
  String name = 'MixinA';

  void printA() {
    print('A');
  }
}

mixin MixinB {
  String name = 'MixinB';

  void printB() {
    print('B');
  }
}

class MyClass with MixinB, MixinA {}

void main(List<String> args) {
  var c = MyClass();
  c.printA();
  c.printB();
}
