import 'package:flutter/material.dart';
import 'home_page.dart';

// Entry point of the Flutter application
void main() => runApp(const MyApp());

// Main class that defines the application
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pet App MVP', // Title of the application
      theme: ThemeData(
        primarySwatch: Colors.blue, // Primary color theme
      ),
      home: const HomePage(), // Home page of the application
    );
  }
}
