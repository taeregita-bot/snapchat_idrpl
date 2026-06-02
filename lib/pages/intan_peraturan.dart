import 'package:flutter/material.dart';

class IntanPeraturan extends StatefulWidget {
  const IntanPeraturan({super.key});

  @override
  State<IntanPeraturan> createState() => _IntanPeraturanState();
}

class _IntanPeraturanState extends State<IntanPeraturan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Peraturan",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(Icons.settings),
          Text("kjiiuiui"),
        ],
      ),
    );
  }
}
