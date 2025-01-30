import 'package:flutter/material.dart';
import 'package:flutter_app/wigdets/bottom_menu.dart';

import '../widgets/bottom_menu.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  final List<Map<String, String>> notifications = [
    {
      "title": "Uçuş Hatırlatması",
      "message": "Yarın saat 10:00'da İstanbul'a uçuşunuz var.",
      "time": "1 saat önce"
    },
    {
      "title": "Otel Rezervasyonu",
      "message": "Paris oteliniz 15:00'te check-in için hazır.",
      "time": "3 saat önce"
    },
    {
      "title": "Araç Kiralama",
      "message": "Roma'da araç kiralamanız onaylandı.",
      "time": "1 gün önce"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          "Seyahat Bildirimleri",
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: Theme.of(context).colorScheme.onPrimary),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final notification = notifications[index];
          return Card(
            elevation: 3,
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: Theme.of(context).colorScheme.onSecondary,
            child: ListTile(
              leading: Icon(Icons.notifications,
                  color: Theme.of(context).colorScheme.secondary),
              title: Text(
                notification["title"]!,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: Theme.of(context).colorScheme.onSecondary),
              ),
              subtitle: Text(
                notification["message"]!,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Theme.of(context).colorScheme.secondary),
              ),
              trailing: Text(
                notification["time"]!,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Theme.of(context).colorScheme.secondary),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}
