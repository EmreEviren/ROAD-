import 'package:flutter/material.dart';
import 'package:flutter_app/wigdets/bottom_menu.dart';

import '../widgets/bottom_menu.dart';

class CarScreen extends StatefulWidget {
  const CarScreen({super.key});

  @override
  State<CarScreen> createState() => _CarScreenState();
}

class _CarScreenState extends State<CarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 230, 57, 71),
        title: const Text(
          'ARAÇLAR',
          style: TextStyle(color: Colors.white),
        ),
      ),
        body: Column(
          children: [
            Image.asset('assets/images/clio.png',
          width: 500,
          height: 140,
          fit: BoxFit.contain,),
            Image.asset('assets/images/bmw.png',
              width: 500,
              height: 140,
              fit: BoxFit.contain,),
            Image.asset('assets/images/peugot.png',
              width: 500,
              height: 140,
              fit: BoxFit.contain,),
            Image.asset('assets/images/cherry.png',
              width: 500,
              height: 130,
              fit: BoxFit.contain,)

          ],
        ),





        bottomNavigationBar: BottomMenu()
    );
  }
}
