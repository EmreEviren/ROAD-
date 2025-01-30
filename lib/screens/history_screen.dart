import 'package:flutter/material.dart';
import 'package:flutter_app/wigdets/bottom_menu.dart';

import '../widgets/bottom_menu.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  final List<Map<String, String>> ticketHistory = [
    {
      'type': 'Uçak',
      'from': 'İstanbul',
      'to': 'Ankara',
      'date': '12 Ocak 2024'
    },
    {
      'type': 'Tren',
      'from': 'İzmir',
      'to': 'Eskişehir',
      'date': '5 Şubat 2024'
    },
    {
      'type': 'Otobüs',
      'from': 'Antalya',
      'to': 'Bursa',
      'date': '20 Mart 2024'
    },
  ];

  final List<Map<String, String>> rentalHistory = [
    {'car': 'BMW X5', 'location': 'İstanbul', 'date': '1-5 Aralık 2023'},
    {'car': 'Toyota Corolla', 'location': 'Ankara', 'date': '10-15 Kasım 2023'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          'Geçmiş Biletler & Kiralamalar',
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
            Text('Bilet Geçmişi',
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onSecondary)),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: ticketHistory.length,
                itemBuilder: (context, index) {
                  final ticket = ticketHistory[index];
                  return Card(
                    child: ListTile(
                      leading: Icon(Icons.directions_bus,
                          color: Theme.of(context).colorScheme.onSecondary),
                      title: Text(
                          '${ticket['type']} - ${ticket['from']} → ${ticket['to']}'),
                      subtitle: Text('Tarih: ${ticket['date']}'),
                    ),
                  );
                },
              ),
            ),
            Text('Araç Kiralama Geçmişi',
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onSecondary)),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: rentalHistory.length,
                itemBuilder: (context, index) {
                  final rental = rentalHistory[index];
                  return Card(
                    child: ListTile(
                      leading: Icon(Icons.directions_car,
                          color: Theme.of(context).colorScheme.onSecondary),
                      title: Text('${rental['car']}'),
                      subtitle:
                          Text('${rental['location']} - ${rental['date']}'),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}

