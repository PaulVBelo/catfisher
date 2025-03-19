import 'package:catfisher/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Catfisher",
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 128, 13, 74),
        primarySwatch: Colors.pink,
        appBarTheme: AppBarTheme(
          elevation: 8,
          color: const Color.fromARGB(255, 232, 10, 84),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        textTheme: TextTheme(
          titleMedium: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          bodyMedium: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
