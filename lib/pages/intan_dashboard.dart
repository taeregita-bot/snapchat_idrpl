import 'package:flutter/material.dart';
import 'package:snapchat_idrpl/pages/intan_postingan.dart';
import 'package:snapchat_idrpl/pages/intan_profil.dart';
import 'package:snapchat_idrpl/pages/rere_chat.dart';
import 'package:snapchat_idrpl/pages/rere_contact.dart';
class IntanDashboard extends StatefulWidget {
  const IntanDashboard({super.key});

  @override
  State<IntanDashboard> createState() => _IntanDashboardState();
}

class _IntanDashboardState extends State<IntanDashboard> {
  int selectedIndex = 0;

  Map<int, List<dynamic>> pages2 = {
    0: [RereChat(), "Chat", Icons.chat],
    1: [IntanPostingan(), "Postingan", Icons.home],
    2: [RereContact(), "Contact", Icons.people_rounded],
    3: [IntanProfil(), "Profile", Icons.person],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white38,
        elevation: 5,
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: pages2.entries.map((r) {
          return BottomNavigationBarItem(
            backgroundColor: Colors.blue.shade200,
            icon: Icon(r.value[2], color: Colors.grey.shade500, size: 32),
            label: r.value[1],
            activeIcon: Icon(r.value[2], color: Colors.blueGrey, size: 42),
          );
        }).toList(),
      ),
      body: pages2[selectedIndex]?[0],
    );
  }
}
