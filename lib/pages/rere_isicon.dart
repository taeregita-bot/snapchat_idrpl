import 'package:flutter/material.dart';

class RereIsicon extends StatefulWidget {
  final String imag;
  final String no;
  const RereIsicon({super.key, required this.imag, required this.no});

  @override
  State<RereIsicon> createState() => _RereIsiconState();
}

class _RereIsiconState extends State<RereIsicon> {
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
              widget.no,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      );
  }
}
