abstract class Phone {
  //声明抽象方法
  void processor();

  void camera();
}

class Dami extends Phone {
  @override
  void camera() {
    print('四星摄像头');
  }

  @override
  void processor() {
    print('枭龙999');
  }
}

void main(List<String> args) {}
