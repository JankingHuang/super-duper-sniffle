import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

Future getIPAddress() async {
  var url = Uri.parse("https://httpbin.org/ip");
  var response = await http.get(url);
  String ip = jsonDecode(response.body)['origin'];
  return ip;
}

void main(List<String> args) async {
  try {
    final ip = await getIPAddress();
    print(ip);
  } catch (error) {
    print(error);
  }
}
