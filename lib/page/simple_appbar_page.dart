import 'package:flutter/material.dart';

class SimpleAppbarPage extends StatefulWidget {
  final String title;

  const SimpleAppbarPage({super.key, required this.title});

  @override
  State<SimpleAppbarPage> createState() => _SimpleAppbarPageState();
}

class _SimpleAppbarPageState extends State<SimpleAppbarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
    );
  }
}