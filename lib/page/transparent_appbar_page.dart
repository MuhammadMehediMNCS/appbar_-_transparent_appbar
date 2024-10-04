import 'package:flutter/material.dart';


class TranspatentAppbarPage extends StatefulWidget {
  const TranspatentAppbarPage({super.key});

  @override
  State<TranspatentAppbarPage> createState() => _TranspatentAppbarPageState();
}

class _TranspatentAppbarPageState extends State<TranspatentAppbarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: const Text('Transparent AppBar'),
          titleTextStyle: const TextStyle(color: Colors.white),
          centerTitle: true,
          leading: const BackButton(color: Colors.white),
          actions: [
            IconButton(
              icon: const Icon(Icons.search, color: Colors.white),
              onPressed: () {},
            )
          ],
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
          ),
          backgroundColor: Colors.transparent, // Colors.white.withOpacity(0.1),
          elevation: 0,
        ),
        body: Image.network(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTv3l2i3U42x9DgrIFSLOSaAg45M0WZE5Oabg&s',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
      );
  }
}