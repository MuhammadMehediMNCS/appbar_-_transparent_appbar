import 'package:appbar/page/simple_appbar_page.dart';
import 'package:appbar/page/transparent_appbar_page.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const String title = 'Flutter AppBar';

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: const TranspatentAppbarPage(),
    );
  }
}