import 'package:flutter/material.dart';
import 'package:snapchat_idrpl/services/rerechat_service.dart';

class RereChat extends StatefulWidget {
  const RereChat({super.key});

  @override
  State<RereChat> createState() => _RereChatState();
}

class _RereChatState extends State<RereChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.arrow_back),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [Text("Pengaturan")],
                ),
              ],
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("RIChat", style: TextStyle(color: Colors.orange)),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.white, Colors.white]),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: ca.length,
        itemBuilder: (context, i) =>
            ListTile(leading: Icon(Icons.person), title: Text(ca[i].tittle)),
      ),
    );
  }
}
