import 'package:flutter/material.dart';
import 'package:weather_app/presentation/choose_a_city.dart';
import 'package:weather_app/presentation/home_page.dart';
import 'package:weather_app/presentation/main_page.dart';

void main(){
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:WeatherScreen()

    );
  }
}