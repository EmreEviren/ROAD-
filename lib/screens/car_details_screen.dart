import 'package:flutter/material.dart';
import 'package:flutter_app/wigdets/bottom_menu.dart';

import '../widgets/bottom_menu.dart';

class CarDetailsScreen extends StatefulWidget {
  const CarDetailsScreen({super.key});

  @override
  State<CarDetailsScreen> createState() => _CarDetailsScreenState();
}

class _CarDetailsScreenState extends State<CarDetailsScreen> {
  final Map<String, String> aracbilgileri = {
    "model": "BMW X5",
    "alısYeri": "İstanbul Şehir Merkezi",
    "bırakmaYeri": "Antalya Havalimanı",
    "alısTarihi": "10 Şubat 2025",
    "bırakmaTarihi": "15 Şubat 2025",
    "Gün": "5",
    "plaka": "34 AB 1234"
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          "Araç Kiralama Detayları",
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: Theme.of(context).colorScheme.onPrimary),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              color: Theme.of(context).colorScheme.onSecondary,
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${aracbilgileri["model"]}",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Theme.of(context).colorScheme.secondary)),
                    const SizedBox(height: 10),
                    Text("Alış Yeri: ${aracbilgileri["alısYeri"]}",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Theme.of(context).colorScheme.secondary)),
                    Text(
                      "Teslim Yeri: ${aracbilgileri["bırakmaYeri"]}",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                    Text(
                      "Alış Tarihi: ${aracbilgileri["alısTarihi"]}",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                    Text(
                      "Teslim Tarihi: ${aracbilgileri["bırakmaTarihi"]}",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                    Text(
                      "Kaç Günlük: ${aracbilgileri["Gün"]} Gün",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                    Text(
                      "Plaka: ${aracbilgileri["plaka"]}",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }
}
