class Circle {
  final double PI = 3.1415;
  num r;

  Circle(this.r);

  num area() {
    return this.PI * this.r * this.r;
  }

  //Getter
  num get area1 {
    return this.PI * this.r * this.r;
  }

  //Settr
  set setR(value) {
    this.r = value;
  }
}

void main(List<String> args) {
  var c = Circle(10);

  print(c.area());
  c.setR = 20;
  print(c.area1);
}
