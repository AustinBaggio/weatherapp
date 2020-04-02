import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  final String url;
  NetworkHelper(this.url);

  Future getData() async {
    http.Response resp = await http.get(url);

    if (resp.statusCode == 200) {
      String data = resp.body;
      return jsonDecode(data);
      
    } else {
      print(resp.statusCode);
    }
  }
}
