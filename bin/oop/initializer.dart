class Rect {
  late int height;
  late int width;

  //Rect(this.height, this.width);

  // Rect([int height = 2, int width = 10]) {
  //   this.height = height;
  //   this.width = 0;

  // }

  //初始化列表。
  Rect()
      : height = 4,
        width = 20 {
    print('${this.height} -- ${this.width}');
  }
}

class Ponit {
  late double x, y, z;
  Ponit(this.x, this.y, this.z) {}
  //初始化列表特殊用法，也成为重定向构造函数
  Ponit.twoD(double x, double y) : this(x, y, 0);
}

void main(List<String> args) {
  var r = Rect();
}
