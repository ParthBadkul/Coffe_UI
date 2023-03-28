import 'package:flutter/material.dart';
import 'package:ui1/HomePage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        accentColor: Colors.amberAccent,
        backgroundColor: Color.fromRGBO(236, 226, 160, 0.794),
      ),
      title: 'Material App',
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromRGBO(236, 226, 160, 0.794),
          body: ListView(
            children: [
              HomePage(),
            ],
          ),
        ),
      ),
    );
  }
}
