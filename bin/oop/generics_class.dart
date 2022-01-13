class CommoClass {
  Set s = Set<int>();
  //不加int 则没有限制

  void add(int value) {
    this.s.add(value);
  }

  void info() {
    print(this.s);
  }
}

class GenericsClass<T> {
  Set s = Set<T>();

  void add(T value) {
    this.s.add(value);
  }

  void info() {
    print(this.s);
  }
}

void main(List<String> args) {
  CommoClass c = CommoClass();
  c.add(1);
  c.add(2);
  c.add(3);

  //实例化泛型类
  GenericsClass g = GenericsClass();
  g.add(1);
  g.add(2);
  g.add(3);
  g.info();
}
