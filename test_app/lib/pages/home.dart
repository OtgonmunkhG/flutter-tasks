import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:test_app/models/constants.dart';
import 'package:http/http.dart' as http;

import '../models/city.dart';
import '../provider/weather_service.dart';

class Home extends StatefulWidget {
  final WeatherService weatherService;
  Home({required this.weatherService});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Constants myConstants = Constants();


  int temperature = 0;
  int maxTemp = 0;
  String weatherStateName = "Loading..";
  int humidity = 0;
  int windSpeed = 0;
  var currentDate = "Loading..";
  String imageUrl = "";
  int woeid = 44418;
  String location = "London";

  var selectedCities = City.getSelectedCities();
  List<String> cities = ["London"];

  List consolidateWeatherList =[];

  // String searchLocationUrl = "https://www.metaweather.com/api/location/search/?query=";
  // String searchWeatherUrl = "https://www.metaweather.com/api/location/";

  Future<void> fetchWeatherData() async {
    try {
      final data = await widget.weatherService.getWeatherByCityName(selectedCities);
      print(data);
      setState(() {
        consolidateWeatherList = data;
      });
      print(consolidateWeatherList);
    } catch (e) {
      print("error fetching weather data: $e");
    }
  }

  // void fetchLocation(String location) async{
  //   var searchResult = await http.get(Uri.parse(searchLocationUrl + location));
  //   var result = json.decode(searchResult.body);
  //   print(result);
  // }
  //
  @override
  void initState() {
    // fetchLocation(cities[0]);
    fetchWeatherData();
    super.initState();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text("Home"),
      ),
    );
  }
}
