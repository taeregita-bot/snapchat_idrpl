import 'package:flutter/material.dart';
import 'package:snapchat_idrpl/pages/intan_bahasa.dart';
import 'package:snapchat_idrpl/pages/intan_peraturan.dart';
import 'package:snapchat_idrpl/pages/intan_pesantersimpan.dart';
import 'package:snapchat_idrpl/pages/rere_isichat.dart';
import 'package:snapchat_idrpl/services/rerechat_service.dart';
import 'package:snapchat_idrpl/services/rereisichat_service.dart';


class RereChat extends StatefulWidget {
  const RereChat({super.key});

  @override
  State<RereChat> createState() => _RereChatState();
}

class _RereChatState extends State<RereChat> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      endDrawer: Drawer(
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: () {
                  Navigator.pop(context);
                },
                    icon: Icon(Icons.arrow_back)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [Text("Pengaturan")],
                ),
              ],
            ),
            SizedBox(height: 65),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(
                          builder: (context) => IntanPesantersimpan(),));
                    },
                    icon: Icon(Icons.bookmark)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Pesan Tersimpan"),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(
                    builder: (context) => IntanPeraturan(),));
                }, icon: Icon(Icons.settings)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Peraturan")],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(
                    builder: (context) => IntanBahasa(),));
                }, icon: Icon(Icons.abc)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Bahasa"),
                  ],
                )
              ],

            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("RIChat", style: TextStyle(color: Colors.white)),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue.shade200, Colors.blue.shade200],
            ),
          ),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                height: 5,
                child: PageView(children: []),
              ),
              SizedBox(
                width: size.width - 40,
                height: 600,
                child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, i) => GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RereIsichat(
                            imag: isi[i].imag,
                            tittle: isi[i].tittle,
                          ),
                        ),
                      );
                    },
                    child: Card(
                      elevation: 4,
                      child: Container(
                        height: 60,
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipOval(
                                  child: Image.asset(
                                    ca[i].imag,
                                    width: 35,
                                    height: 35,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                SizedBox(width: 5),
                                SizedBox(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        ca[i].tittle,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              ca[i].subttile,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Icon(Icons.check),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
