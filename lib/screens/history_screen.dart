import 'package:flutter/material.dart';

import '../widgets/bottom_menu.dart';
import '../wigdets/bottom_menu.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child:
        Text("Geçmişim",
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
