import 'package:flutter/material.dart';

class IntanpostinganWidget extends StatefulWidget {
  final String imageURL;
  final String tittle;
  final VoidCallback pro;
  const IntanpostinganWidget({
    super.key, required this.imageURL,
    required this.tittle,
    required this.pro, required double width, required int height,
  });

  @override
  State<IntanpostinganWidget> createState() => _IntanpostinganWidgetState();
}

class _IntanpostinganWidgetState extends State<IntanpostinganWidget> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Card(
      elevation: 3,
      child: Container(
        width: size.width,
        height: size.height,
        padding: EdgeInsets.all(10),

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              offset: Offset(0.5, 0.5),
              color: Colors.blue,
              blurRadius: 2,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(10),
              child: Image.asset(
                widget.imageURL,
                width: size.width,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            Text(
              widget.imageURL,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Card(
                  elevation: 2,
                  color: Colors.yellow,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: Text(widget.tittle.toString()),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                  elevation: 2,
                  color: Colors.orange,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                  ),
                ),
                IconButton(onPressed: widget.pro, icon: Icon(Icons.favorite)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}