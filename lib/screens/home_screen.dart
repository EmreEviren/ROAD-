import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/wigdets/bottom_menu.dart';
import 'package:go_router/go_router.dart';
import '../core/themes.dart';
import '../widgets/bottom_menu.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          'ROAD+',
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: Theme.of(context).colorScheme.onPrimary),
        ),
        actions: [
          
          IconButton(
            color: Theme.of(context).colorScheme.onPrimary,
            icon: const Icon(CupertinoIcons.bell, size: 30),
            onPressed: () {
              context.go("/notifications");
            },
          ),
        ],
      ),
      // Drawer (Yan Menü)
      drawer: Drawer(
        backgroundColor: Theme.of(context).colorScheme.surface,
        elevation: 0,
        child: Column(
          children: [
            // Drawer Header
            Container(
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    CupertinoIcons.person_circle,
                    size: 80,
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'EMRE EVİREN',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                  ),
                ],
              ),
            ),
            // Menü öğeleri
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Theme.of(context).colorScheme.onSecondary,
              ),
              title: Text(
                'Ana Sayfa',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
              ),
              onTap: () {
                context.go("/home");
              },
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.arrow_counterclockwise,
                color: Theme.of(context).colorScheme.onSecondary,
              ),
              title: Text(
                'Geçmiş',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
              ),
              onTap: () {
                context.push("/history");
              },
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.ticket,
                color: Theme.of(context).colorScheme.onSecondary,
              ),
              title: Text(
                'Biletlerim',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
              ),
              onTap: () {
                context.go("/ticket");
              },
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.car,
                color: Theme.of(context).colorScheme.onSecondary,
              ),
              title: Text(
                'Araçlarım',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
              ),
              onTap: () {
                context.go("/car");
              },
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.settings,
                color: Theme.of(context).colorScheme.onSecondary,
              ),
              title: Text(
                'Ayarlar',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
              ),
              onTap: () {
                context.push("/settings");
              },
            ),
          ],
        ),
      ),

      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'MERHABA EMRE,',
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(height: 10),
            Text(
              'Seyahatlerinizi kolaylaştıran uygulamaya hoş geldiniz!',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(height: 20),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset('assets/images/kampanya.png',
                    fit: BoxFit.cover),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomMenu(),
    );
  }
}


