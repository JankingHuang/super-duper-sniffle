import 'package:http/http.dart' as http;
import 'dart:convert';

Future getIPAddress() {
  var url = Uri.parse('https://httpbin.org/ip');
  return http.get(url).then((response) {
    //response 是整个返回题
    print(response.body);

    String ip = jsonDecode(response.body)['origin'];
    return ip;
  });
}

void main(List<String> args) {
  getIPAddress()
      .then((value) => print(value))
      .catchError((error) => print(error));
}
