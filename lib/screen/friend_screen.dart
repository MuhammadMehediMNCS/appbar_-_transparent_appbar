import 'package:flutter/material.dart';

class FriendScreen extends StatefulWidget {
  const FriendScreen({super.key});

  @override
  State<FriendScreen> createState() => _FriendScreenState();
}

class _FriendScreenState extends State<FriendScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text("Friend Page"),
        titleTextStyle: const TextStyle(color: Colors.white),
      ),
      body: const Center(
        child: Text(
          'Friend Page',
          style: TextStyle(fontSize: 32),
        ),
      ),
    );
  }
}