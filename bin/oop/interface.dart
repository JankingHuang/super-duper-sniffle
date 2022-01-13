abstract class Processor {
  late String cores; //内核数
  arch(String name); //芯片制程
}

abstract class Camera {
  late String resolution;
  brand(String name);
}

class Phone implements Processor, Camera {
  @override
  late String cores;

  @override
  late String resolution;

  @override
  arch(String name) {
    // TODO: implement arch
    throw UnimplementedError();
  }

  @override
  brand(String name) {
    // TODO: implement brand
    throw UnimplementedError();
  }

  Phone(this.cores, this.resolution);
}

void main(List<String> args) {
  Phone p = Phone('99核', '3000万');
  print(p);
}
