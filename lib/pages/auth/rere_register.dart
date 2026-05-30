import 'package:flutter/material.dart';
import 'package:snapchat_idrpl/pages/intan_dashboard.dart';
import 'package:snapchat_idrpl/pages/rere_chat.dart';

class RereRegister extends StatefulWidget {
  const RereRegister ({super.key});

  @override
  State<RereRegister> createState() => _RereRegiterState();
}

class _RereRegiterState extends State<RereRegister> {
  TextEditingController _password = TextEditingController();
  TextEditingController _username = TextEditingController();

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
      backgroundColor: Colors.blue.shade300,
      body: Container(
        width: size.width,
        height: size.height,
        padding: const EdgeInsets.all(50),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'RIChat',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 50,
                      fontWeight: FontWeight.normal,
                      shadows: [
                        BoxShadow(
                          offset: Offset(2, 1),
                          color: Colors.blue.shade900,
                          blurRadius: 3,
                          spreadRadius: 6,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Icon(
                    Icons.edgesensor_high,
                    size: 50,
                    color: Colors.grey,
                    shadows: [
                      BoxShadow(
                        offset: Offset(2, 1),
                        color: Colors.blue.shade900,
                        blurRadius: 3,
                        spreadRadius: 6,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 50),
              TextField(
                controller: _username,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Nomer",
                  alignLabelWithHint: true,
                  focusColor: Colors.red,
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
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
                  focusColor: Colors.red,
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
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
              Row(
                children: [
                  Checkbox(
                    value: _rememberMe,
                    onChanged: (value) {
                      setState(() {
                        _rememberMe = !_rememberMe;
                      });
                    },
                  ),
                  Text('Anda Yakin?', style: TextStyle(color: Colors.grey.shade700)),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_username.value.text == 'Intan' &&
                      _password.value.text == 'cantik') {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('sukses'),
                        content: Text(
                          'Selamat data ${_username.text.toString()}',
                        ),
                      ),
                    );
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text(('gagal')),
                        content: Text('Silakan coba lagi!!'),
                      ),
                    );
                  }
                },
                style: ButtonStyle(
                  maximumSize: WidgetStatePropertyAll(
                    Size(size.width - 80, 50),
                  ),
                ),
                child: TextButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => IntanDashboard()),
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
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