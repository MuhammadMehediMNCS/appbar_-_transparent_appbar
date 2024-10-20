import 'package:appbar/screen/friend_screen.dart';
import 'package:appbar/screen/home_screen.dart';
import 'package:appbar/screen/message_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int currentIndex = 0;

  final screens = [
    const HomeScreen(),
    const FriendScreen(),
    const MessageScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text("Bottom Navigation Bar"),
        titleTextStyle: const TextStyle(color: Colors.white),
      ),
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      // body: screens [currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.indigo,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        // iconSize: 40,
        // showSelectedLabels: false,
        // showUnselectedLabels: false,
        selectedFontSize: 24.0,
        unselectedFontSize: 16.0,
        currentIndex: currentIndex,
        onTap: (index) => setState(() {currentIndex = index;}),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Friends',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Message',
          ),
        ]
      ),
    );
  }
}