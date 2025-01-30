import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/wigdets/bottom_menu.dart';
import 'package:go_router/go_router.dart';

import '../widgets/bottom_menu.dart';

class CarScreen extends StatefulWidget {
  const CarScreen({super.key});

  @override
  State<CarScreen> createState() => _CarScreenState();
}

class _CarScreenState extends State<CarScreen> {
  String selectedCategory = "Sedan";
  final List<String> categories = ["Sedan", "SUV", "Hatchback", "Minivan"];
  final List<Map<String, String>> cars = [
    {"brand": "Toyota", "model": "Corolla", "price": "₺500/gün"},
    {"brand": "BMW", "model": "X5", "price": "₺1200/gün"},
    {"brand": "Ford", "model": "Focus", "price": "₺600/gün"},
    {"brand": "Mercedes", "model": "E200", "price": "₺1500/gün"},
    {"brand": "Renault", "model": "Clio", "price": "₺450/gün"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          'ARAÇ KİRALAMA',
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: Theme.of(context).colorScheme.onPrimary),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: categories.map((category) {
                  bool isSelected = category == selectedCategory;
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: ChoiceChip(
                      label: Text(category),
                      selected: isSelected,
                      onSelected: (selected) {
                        setState(() {
                          selectedCategory = category;
                        });
                      },
                      selectedColor: Theme.of(context).colorScheme.primary,
                      labelStyle: TextStyle(
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: cars.length,
              itemBuilder: (context, index) {
                final car = cars[index];
                return Card(
                  margin: EdgeInsets.all(8),
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListTile(
                    leading: Icon(
                      CupertinoIcons.car_detailed,
                      color: Theme.of(context).colorScheme.onSecondary,
                      size: 32,
                    ),
                    title: Text('${car["brand"]} ${car["model"]}'),
                    subtitle: Text('Fiyat: ${car["price"]}'),
                    trailing: Icon(CupertinoIcons.forward),
                    onTap: () {
                      context.push('/car_details');
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}