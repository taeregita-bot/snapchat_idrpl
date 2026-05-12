import 'dart:async';

import 'package:flutter/material.dart';
import 'package:snapchat_idrpl/rere_register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late Timer t;

  @override
  void initState() {
    t = Timer.periodic(
      const Duration(seconds: 5),
          (timer) => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => RereRegister()),
      ),
    );
    super.initState();
  }

  TextEditingController _password = TextEditingController();
  TextEditingController _username = TextEditingController();
  TextEditingController _nomer = TextEditingController();

  bool _isObscure = true;
  IconData _isObscureIcon = Icons.remove_red_eye;
  bool _rememberMe = true;

  void isObscureText() {
    if (_isObscure) {
      _isObscure = false;
      _isObscureIcon = Icons.remove_red_eye_outlined;
    } else {
      _isObscure = true;
      _isObscureIcon = Icons.remove_red_eye;
    }
    debugPrint(_isObscure.toString());
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.orange,
      body: Container(
        width: size.width,
        height: size.height,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/PO.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "RIChat",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          BoxShadow(
                            offset: Offset(2, 1),
                            color: Colors.black,
                            blurRadius: 3,
                            spreadRadius: 5,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 20),
                Icon(Icons.edgesensor_high, size: 50, color: Colors.orange),
              ],
            ),
            SizedBox(height: 50),
            TextField(
              controller: _username,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: "Username",
                alignLabelWithHint: true,
                focusColor: Colors.yellowAccent,
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                suffixIcon: IconButton(
                  icon: Icon(_isObscureIcon),
                  onPressed: () {
                    setState(() {
                      isObscureText();
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _password,
              keyboardType: TextInputType.text,
              obscureText: _isObscure,
              decoration: InputDecoration(
                hintText: "Password",
                alignLabelWithHint: true,
                focusColor: Colors.yellowAccent,
                fillColor: Colors.white70,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                suffixIcon: IconButton(
                  icon: Icon(_isObscureIcon),
                  onPressed: () {
                    setState(() {
                      isObscureText();
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _password,
              keyboardType: TextInputType.text,
              obscureText: _isObscure,
              decoration: InputDecoration(
                hintText: "Nomer",
                alignLabelWithHint: true,
                focusColor: Colors.yellowAccent,
                fillColor: Colors.white70,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                suffixIcon: IconButton(
                  icon: Icon(_isObscureIcon),
                  onPressed: () {
                    setState(() {
                      isObscureText();
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (_username.value.text == 'Selamat' &&
                    _password.value.text == 'Datang') {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('Berhasil'),
                      content: Text(
                        'Selamat Datang ${_username.text.toString()}',
                      ),
                    ),
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('Gagal'),
                      content: Text('Coba Lagi!!'),
                    ),
                  );
                }
              },
              child: Text('Login', style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}
