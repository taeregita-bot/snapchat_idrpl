import 'package:flutter/material.dart';

class IntanProfil extends StatefulWidget {
  const IntanProfil({super.key});

  @override
  State<IntanProfil> createState() => _IntanProfilState();
}

class _IntanProfilState extends State<IntanProfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.blue.shade200,Colors.blue.shade200]),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [Text("RIChat", style: TextStyle(color: Colors.white))],
        ),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
               borderRadius: BorderRadius.circular(80),
                child: Image.asset("assets/images/ra.jpeg", width: 110, height: 110)),
            SizedBox(width: 20),
            Text("09777", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10)),
            Text("Phone", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10)),
            Text("@refgokj", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10)),
            Text("Username", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10)),
          ],
        ),
      ),
    );
  }
}
