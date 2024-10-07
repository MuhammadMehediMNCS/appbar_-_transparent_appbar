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
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu, color: Colors.white)
          ),
          title: Text(widget.title),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search, color: Colors.white)
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert, color: Colors.white)
            )
          ],
          //backgroundColor: Colors.blue,
          //centerTitle: true,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.purple],
                begin: Alignment.bottomLeft,
                end: Alignment.topLeft
              )
            ),
          ),
          bottom: const TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 5.0,
            labelStyle: TextStyle(color: Colors.white),
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.people), text: 'Friends'),
              Tab(icon: Icon(Icons.notifications), text: 'Notifications'),

            ]
          ),
          titleSpacing: 22.0,
          titleTextStyle: const TextStyle(color: Colors.white),
        ),
        body: TabBarView(
          children: [
            buildPage("Home Page"),
            buildPage("Friends Page"),
            buildPage("Notifications Page"),
          ]
        ),
      ),
    );
  }

  Widget buildPage(String text) => Center(
    child: Text(
      text,
      style: const TextStyle(fontSize: 32.0),
    )
  );
}