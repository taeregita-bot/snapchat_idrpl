import 'package:flutter/material.dart';

class IntanBahasa extends StatefulWidget {
  const IntanBahasa({super.key});

  @override
  State<IntanBahasa> createState() => _IntanBahasaState();
}

class _IntanBahasaState extends State<IntanBahasa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Bahasa",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(Icons.abc),
          Text("Indonesia"),
        ],
      ),
    );
  }
}
