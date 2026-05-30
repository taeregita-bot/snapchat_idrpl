import 'package:flutter/material.dart';

class IntanprofilButton extends StatelessWidget {
  const IntanprofilButton({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 50,
      margin: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipOval(
                child: Image.asset(
                  "assets/images/xim.jpeg",
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("pp", style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 3),
                  Text("xreizen@gmail.com"),
                ],
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.pinkAccent),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
              fixedSize: WidgetStatePropertyAll(Size(90, 30)),
            ),
            child: Text("Profile", style: TextStyle(color: Colors.white70)),
          ),
        ],
      ),
    );
  }
}
