import 'package:flutter/material.dart';

class RereIsichat extends StatefulWidget {
  final String imag;
  final String tittle;
  const RereIsichat({super.key, required this.imag, required this.tittle});

  @override
  State<RereIsichat> createState() => _RereIsichatState();
}

class _RereIsichatState extends State<RereIsichat> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipOval(child: Image.asset(widget.imag, width: 40, height: 40)),
            SizedBox(width: 5),
            Text(
              widget.tittle,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        flexibleSpace: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue.shade200, Colors.blue.shade200],
            ),
          ),
        ),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.white, Colors.white],
          ),
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text("Haii apa kabar? apakah masih inget aku ga"),
                ),
              ),
            ),
            Column(
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text("Baik,Kalo kamu gimanaa "),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text("Baik juga,Aku kangen deh sama kamu"),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
