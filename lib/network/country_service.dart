import 'dart:convert';
import 'package:http/http.dart' as http;

class CountryService {
  Future<List<dynamic>> fetchCountryInformations(String countryCode) async {
    final response = await http.get(Uri.parse('https://restcountries.com/v3.1/alpha/$countryCode'));
    if (response.statusCode == 200) {
      return jsonDecode(utf8.decode(response.bodyBytes));
    } else {
      throw Exception('Failed to load country informations');
    }
  }
}