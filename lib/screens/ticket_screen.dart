

import 'package:flutter/material.dart';
import 'package:flutter_app/wigdets/bottom_menu.dart';

import '../widgets/bottom_menu.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 230, 57, 71),
          title: const Text(
            'BİLETLER',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Image.asset(
              'assets/images/diyarbakır.png',
              width: 500,
              height: 120,
              fit: BoxFit.contain,
            ),
            Image.asset(
              'assets/images/kastamonu.png',
              width: 500,
              height: 120,
              fit: BoxFit.contain,
            ),
            Image.asset(
              'assets/images/italya.png',
              width: 500,
              height: 120,
              fit: BoxFit.contain,
            ),
            Image.asset(
              'assets/images/metro.png',
              width: 500,
              height: 120,
              fit: BoxFit.contain,
            )
          ],
        ),
        bottomNavigationBar: BottomMenu());
  }
}
