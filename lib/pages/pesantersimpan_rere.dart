import 'package:flutter/material.dart';

class PesantersimpanRere extends StatefulWidget {
  const PesantersimpanRere({super.key});

  @override
  State<PesantersimpanRere> createState() => _PesantersimpanRereState();
}

class _PesantersimpanRereState extends State<PesantersimpanRere> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Pesan Tersimpan"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.bookmark, size: 50),
            SizedBox(height: 10),
            Text("Tidak Tersedia", style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
