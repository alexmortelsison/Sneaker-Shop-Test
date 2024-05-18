import 'package:flutter/material.dart';
import 'package:test_sneaker_shop/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        textTheme: const TextTheme(
          titleMedium: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          bodySmall: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
          titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(fontSize: 16, color: Colors.black),
        ),
        fontFamily: 'Lato',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        inputDecorationTheme: const InputDecorationTheme(
          hintStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          prefixIconColor: Colors.grey,
        ),
      ),
      home: const HomePage(),
    );
  }
}
