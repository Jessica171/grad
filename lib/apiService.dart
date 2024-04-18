import 'package:http/http.dart' as http;
class ApiService {
  static const baseUrl = 'http://localhost:8080/login'; 

  Future<http.Response> login(String email, String password) async {
    final url = Uri.parse('$baseUrl/login');
    final body = {'email': email, 'password': password};

    final response = await http.post(url, body: body);
    print ('Response status code: ${response.statusCode}');
    return response;
  }
}