abstract class ObjectCache {
  getByKey(String key);
  void setByKey(String key, Object value);
}

abstract class StringCache {
  getByKey(String key);
  void setByKey(String key, String value);
}

//泛型接口
abstract class Cache<T> {
  getByKey(String key);
  void setByKey(String key, T value);
}

//文件缓存
class FileCache<T> implements Cache<T> {
  @override
  getByKey(String key) {
    return null;
  }

  @override
  void setByKey(String key, T value) {
    print('文件缓存: key = ${key} value= ${value}');
  }
}

void main(List<String> args) {
  FileCache fc = new FileCache<String>();
  fc.setByKey('foo', 'bar');
}
