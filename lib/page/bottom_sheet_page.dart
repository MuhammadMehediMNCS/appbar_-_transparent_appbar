import 'package:flutter/material.dart';

class BottomSheetPage extends StatefulWidget {
  const BottomSheetPage({super.key});

  @override
  State<BottomSheetPage> createState() => _BottomSheetPageState();
}

class _BottomSheetPageState extends State<BottomSheetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu, color: Colors.white)),
        title: const Text("Home"),
        titleTextStyle: const TextStyle(color: Colors.white),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search, color: Colors.white)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert, color: Colors.white))
        ],
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: showBottomSheet,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            textStyle: const TextStyle(fontSize: 32.0),
            minimumSize: const Size(220.0, 80.0)
          ),
          child: const Text(
            "Open Bottom Sheet",
            style: TextStyle(color: Colors.white),
          )
        ),
      ),
    );
  }

  void showBottomSheet() => showModalBottomSheet(
    context: context,
    backgroundColor: Colors.black,
    enableDrag: false,
    isDismissible: false,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(50.0))
    ),
    barrierColor: Colors.purple[300],
    builder: (context) => Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          leading: const Icon(Icons.facebook),
          title: const Text("Facebook"),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.snapchat),
          title: const Text("SnapChat"),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.more_horiz),
          title: const Text("More"),
          onTap: () {
            Navigator.of(context).pop();
          },
        )
      ],
    )
  );
}
