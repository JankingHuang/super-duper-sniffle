class Phone {
  //旧方法会保留一两个版本，作为过渡

  @deprecated
  activate() {
    turnOn();
  }

  turnOn() {
    print('开机');
  }
}

void main(List<String> args) {
  var p = Phone();
  p.activate();
}
