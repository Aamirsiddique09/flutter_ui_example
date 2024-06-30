import 'package:flutter/material.dart';
import 'section1.dart';
import 'section2.dart';
import 'section3.dart';
import 'section4.dart';

void main() {
  runApp(MyApp());
}

// Main application widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Widgets')),
        body: MyHomePage(),
      ),
    );
  }
}

// Home Page widget containing all sections
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Section1(),  // Key Concepts Section
          Section2(),  // Design and Implement User Interfaces Section
          Section3(),  // Responsive Layouts Section
          Section4(),  // Visual Appeal Section
        ],
      ),
    );
  }
}
