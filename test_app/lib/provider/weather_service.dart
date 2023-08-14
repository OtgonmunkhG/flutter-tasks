import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/city.dart';

class WeatherService {
  final String apiKey;
  final String baseUrl = 'https://api.openweathermap.org/data/2.5';
  WeatherService(this.apiKey);
  
  
  Future<List<String>> getWeatherByCityName(List<City> selectedCities) async {
    final response = await http.get(Uri.parse("$baseUrl/weather?q=$selectedCities&appid=$apiKey"));

    if(response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      final List<String> listData = [];

      if(data.containsKey("weather") && data["weather"] is List) {
        listData.addAll(data["weather"].map<String>((entry) {
          if(entry is Map && entry.containsKey("listData")) {
            return entry["listData"].toString();
          }
          return "";
        }));
      }
      return listData;

    } else {
      throw Exception("Failed to fetch weather data");
    }
  }
  
}