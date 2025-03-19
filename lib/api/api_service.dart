import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/cat_model.dart';

class ApiService {
  static const String baseUrl = 'https://api.thecatapi.com/v1';
  static const String apiKey =
      'live_4EgwUmgUHLZyMcaD3UxkyKCscFPyLhctbs8KvEummKdOI3XxWlAipOPyk2FFvfi4';

  Future<List<Cat>> fetchRandomCats() async {
    final response = await http.get(
      Uri.parse('$baseUrl/images/search?has_breeds=1&limit=5'),
      headers: {'x-api-key': apiKey},
    );

    if (response.statusCode == 200) {
      List<dynamic> jsonResponse = json.decode(response.body);
      return jsonResponse.map((cat) => Cat.fromJson(cat)).toList();
    } else {
      throw Exception('Failed to load cats');
    }
  }
}
