import 'package:flutter/material.dart';
import '../models/fishing_item.dart';

class FishingItemCard extends StatelessWidget {
  final FishingItem item;

  const FishingItemCard({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(item.name),
        subtitle: Text('Peso: ${item.weight} kg'),
      ),
    );
  }
}
