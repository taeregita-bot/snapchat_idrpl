import 'package:flutter/material.dart';

class IntanPesantersimpan extends StatefulWidget {
  const IntanPesantersimpan({super.key});

  @override
  State<IntanPesantersimpan> createState() => _IntanPesantersimpanState();
}

class _IntanPesantersimpanState extends State<IntanPesantersimpan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pesan Tersimpan",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(Icons.bookmark),
          Text("Kangennnnnn"),
        ],
      ),
    );
  }
}
