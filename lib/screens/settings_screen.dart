import 'package:flutter/material.dart';
import 'package:flutter_app/wigdets/bottom_menu.dart';

import '../widgets/bottom_menu.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child:
        Text("Ayarlar",
          style:
          TextStyle(
              color: Color.fromARGB(255, 29, 53, 87)
          ),
        ),


      ),
        bottomNavigationBar: BottomMenu()
    );
  }
}
