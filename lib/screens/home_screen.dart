import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';


import '../widgets/bottom_menu.dart';
import '../wigdets/bottom_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        // AppBar
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 230, 57, 71),
          title: const Text(
            'ROAD+',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
          actions: [
            IconButton(
              color: Colors.white,
              icon: const Icon(
                CupertinoIcons.bell,
                size: 30,
              ),
              onPressed: () {
                context.go("/notifications");
              },
            ),
          ],
        ),

        // Drawer (Yan Menü)
        drawer: Drawer(
          backgroundColor: Colors.white,
          elevation: 0,
          child: Column(
            children: [
              // Drawer Header
              Container(
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      CupertinoIcons.person_circle,
                      size: 80,
                      color: Color.fromARGB(255, 29, 53, 87),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'EMRE EVİREN',
                      style: TextStyle(
                        color: Color.fromARGB(255, 29, 53, 87),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              // Menü öğeleri
              ListTile(
                leading: const Icon(
                  CupertinoIcons.home,
                  color: Color.fromARGB(255, 29, 53, 87),
                ),
                title: const Text('Ana Sayfa'),
                onTap: () {
                  context.go("/home");
                },
              ),
              ListTile(
                leading: const Icon(
                  CupertinoIcons.arrow_counterclockwise,
                  color: Color.fromARGB(255, 29, 53, 87),
                ),
                title: const Text('Geçmiş'),
                onTap: () {
                  context.go("/history");
                },
              ),
              ListTile(
                leading: const Icon(
                  CupertinoIcons.ticket,
                  color: Color.fromARGB(255, 29, 53, 87),
                ),
                title: const Text('Biletlerim'),
                onTap: () {
                  context.go("/ticket");
                },
              ),
              ListTile(
                leading: const Icon(
                  CupertinoIcons.car,
                  color: Color.fromARGB(255, 29, 53, 87),
                ),
                title: const Text(
                  'Araçlarım',
                ),
                onTap: () {
                  context.go("/car");
                },
              ),
              ListTile(
                leading: const Icon(
                  CupertinoIcons.settings,
                  color: Color.fromARGB(255, 29, 53, 87),
                ),
                title: const Text('Ayarlar'),
                onTap: () {
                  context.go("/settings");
                },
              ),
            ],
          ),
        ),

        // Ana içerik

        body: Column(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(0),
                child: const Text(
                  'MERHABA EMRE,',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Image.asset('assets/images/kampanya.png'),

            Expanded(
                child: Container(
                    padding: const EdgeInsets.all(15),
                    child: const Text(
                      'KATEGORİLER',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 29, 53, 87)),
                    ))),
            Expanded(
                child: Row(
              children: [

                Padding(padding: EdgeInsets.all(20)),
                const Icon(
                  CupertinoIcons.airplane,
                  color: Color.fromARGB(255, 29, 53, 87),
                  size: 80,
                ),
                Padding(padding: EdgeInsets.all(20)),
                Icon(
                  CupertinoIcons.car,
                  color: Color.fromARGB(255, 29, 53, 87),
                  size: 80,
                ),
                Padding(padding: EdgeInsets.all(20)),
                Icon(
                  CupertinoIcons.train_style_one,
                  color: Color.fromARGB(255, 29, 53, 87),
                  size: 80,
                ),
                Padding(padding: EdgeInsets.all(20)),
                Icon(
                  CupertinoIcons.bus,
                  size: 80,
                  color: Color.fromARGB(255, 29, 53, 89),
                ),


              ],
            )),
            SizedBox(
              width: 800,
            )
          ],
        ),

        // Alt navigasyon çubuğu
        bottomNavigationBar: BottomMenu());
  }
}
