import 'package:flutter/material.dart';
import 'package:flutter_rest_api/view/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rest API',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepOrange,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.deepOrange,
      ),
      home: const HomeScreen(),
    );
  }
}