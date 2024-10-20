import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text("Message Page"),
        titleTextStyle: const TextStyle(color: Colors.white),
      ),
      body: const Center(
        child: Text(
          'Message Page',
          style: TextStyle(fontSize: 32),
        ),
      ),
    );
  }
}