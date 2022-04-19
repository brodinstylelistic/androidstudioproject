import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:percobaan1/data/model/tourism_place.dart';

class ApiService {
  Future<TourismResult> topHeadlines() async {
    final response = await http
        .get(Uri.parse('http://localhost/percobaan1/API_Server/api.php'));
    if (response.statusCode == 200) {
      return TourismResult.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load top headlines');
    }
  }
}
