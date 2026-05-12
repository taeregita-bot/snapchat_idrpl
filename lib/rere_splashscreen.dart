import 'dart:async';

import 'package:flutter/material.dart';
import 'package:snapchat_idrpl/login.dart';

class RereSplashscreen extends StatefulWidget {
  const RereSplashscreen({super.key});

  @override
  State<RereSplashscreen> createState() => _RereSplashscreenState();
}

class _RereSplashscreenState extends State<RereSplashscreen> {
  late Timer t;

  @override
  void initState() {
    t = Timer.periodic(
      const Duration(seconds: 3),
          (timer) => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      ),
    );
    super.initState();
  }

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return  Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/log.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

