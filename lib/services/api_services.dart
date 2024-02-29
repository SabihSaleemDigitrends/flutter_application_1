import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiServices {
  final String baseUrl;

  ApiServices({this.baseUrl = 'https://dummyjson.com/'});

  Future<dynamic> getData(String endpoint) async {
    final response = await http.get(Uri.parse('$baseUrl/$endpoint'));
    return _handleResponse(response);
  }

  Future<dynamic> postData(String endpoint, Map<dynamic, dynamic> data) async {
    final response = await http.post(Uri.parse('$baseUrl/$endpoint'),
        body: jsonEncode(data), headers: {'Content-Type': 'application/json'});
    return _handleResponse(response);
  }

  Future<dynamic> putData(String endpoint, Map<dynamic, dynamic> data) async {
    final response = await http.put(Uri.parse('$baseUrl/$endpoint'),
        body: jsonEncode(data), headers: {'Content-Type': 'application/json'});
    return _handleResponse(response);
  }

  Future<dynamic> deleteData(String endpoint) async {
    final response = await http.delete(Uri.parse('$baseUrl/$endpoint'));
    return _handleResponse(response);
  }

  dynamic _handleResponse(http.Response response) {
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception(
          'Failed to load data. Status code: ${response.statusCode}');
    }
  }
}
