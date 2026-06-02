import 'package:flutter/material.dart';
import 'package:snapchat_idrpl/models/intanpostingan_model.dart';
import 'package:snapchat_idrpl/services/intanpostingan_service.dart';
import 'package:snapchat_idrpl/widgets/intanpostingan_widget.dart';

class IntanPostingan extends StatefulWidget {
  const IntanPostingan({super.key});

  @override
  State<IntanPostingan> createState() => _IntanPostinganState();
}

class _IntanPostinganState extends State<IntanPostingan> {
  List<IntanpostinganModel> favorite = [];
  List<IntanpostinganModel> nonfavorite = [];

  @override
  void initState() {
    super.initState();
    pos.forEach((element) {
      if (element.favorite) {
        favorite.add(element);
      } else {
        nonfavorite.add(element);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "Postingan",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
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
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  width: size.width,
                  margin: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Favorite"),
                          TextButton(
                            onPressed: () {},
                            child: Row(
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 140,
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: favorite.length,
                          itemBuilder: (context, i) {
                            return Card(
                              margin: EdgeInsets.all(10),
                              elevation: 3,
                              child: Container(
                                width: size.width - 150,
                                height: 120,
                                padding: const EdgeInsets.all(8),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      favorite[i].image,
                                      width: 80,
                                      height: 80,
                                    ),
                                    SizedBox(width: 8),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                        Text(
                                          favorite[i].tittle.toString(),
                                        ),
                                          SizedBox(height: 5),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              IconButton(
                                                icon: Icon(
                                                  Icons.favorite,
                                                  color: Colors.red,
                                                ),
                                                onPressed: () {
                                                  setState(() {
                                                    final item = favorite
                                                        .removeAt(i);
                                                    nonfavorite.add(item);
                                                  });
                                                },
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 0.7,
                    ),
                    shrinkWrap: true,
                    itemCount: nonfavorite.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return IntanpostinganWidget(
                        imageURL: nonfavorite[index].image,
                        tittle: nonfavorite[index].tittle.toString(),
                        width: size.width / 2 - 15,
                        height: 100,
                        pro: () {
                          setState(() {
                            final item = nonfavorite.removeAt(index);
                            favorite.add(item);
                          });
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}