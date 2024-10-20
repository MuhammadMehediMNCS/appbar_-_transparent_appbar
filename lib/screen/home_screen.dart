import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text("Home Page"),
        titleTextStyle: const TextStyle(color: Colors.white),
      ),
      body: Center(
        child: Text(
          index.toString(),
          style: const TextStyle(fontSize: 32),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            index ++;
          });
        },
        backgroundColor: Colors.indigo,
        child: const Icon(Icons.add, color: Colors.white,),
      ),
    );
  }
}