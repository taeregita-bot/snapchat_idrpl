import 'package:flutter/material.dart';
import 'package:snapchat_idrpl/services/rerecontact_service.dart';

class RereContact extends StatefulWidget {
  const RereContact({super.key});

  @override
  State<RereContact> createState() => _RereContactState();
}

class _RereContactState extends State<RereContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.orange]),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("RIChat", style: TextStyle(color: Colors.orange))],
        ),
      ),
      body: ListView.builder(
        itemCount: con.length,
        itemBuilder: (context, i) =>
            ListTile(leading: Icon(Icons.person), title: Text(con[i].tittle)),
      ),
    );
  }
}
