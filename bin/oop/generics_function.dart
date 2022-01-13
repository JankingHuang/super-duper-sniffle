String getData(String value) {
  return value;
}

//参数类型、返回类型都是T
T getDate<T>(T value) {
  return value;
}

//返回类型为任意
getData1<T>(T value) {
  return value;
}

void main(List<String> args) {
  //没啥好写的，和C++泛型一样。
}
