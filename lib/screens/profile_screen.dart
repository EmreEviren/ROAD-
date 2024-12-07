import 'package:flutter/material.dart';
import 'package:flutter_app/wigdets/bottom_menu.dart';

import '../widgets/bottom_menu.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 230, 57, 71),
    title: const Text(
    'PROFİLİM',
    style: TextStyle(color: Colors.white),
    ),
    ),
        body: SingleChildScrollView(
          child: Padding(
              padding:const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


              const Center(
                child: CircleAvatar(


                  radius: 80,
                  backgroundColor: Color.fromARGB(255, 29, 53, 87),
                  backgroundImage: AssetImage('assets/images/testo.jpg'),

                ),
              ),
              const SizedBox(height: 20),

              const Text('Kullanıcı Bilgileri',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 29, 53, 87)
              ),
              ),
              const SizedBox(height: 10,),
              Text('Ad Soyad:Emre Eviren',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 29, 53, 87)
              ),),
              Text('E-Posta: emre@example.com',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 29, 53, 87)
                ),),
              Text('Telefon: +90 555 444 33 22',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 29, 53, 87)
              ),)
            ],
          ),),
        ),


        bottomNavigationBar: BottomMenu()
    );
  }
}
