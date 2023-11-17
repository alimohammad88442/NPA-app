import 'dart:convert';
import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> get(String url) async {
    try {
  http.Response response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else {
    throw Exception(
        'there is an error in the respons ${response.statusCode}');
  }
}  catch (e) {}
  }
}