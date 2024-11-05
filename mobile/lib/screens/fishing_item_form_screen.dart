import 'package:flutter/material.dart';
import '../repositories/fishing_repository.dart';
import '../models/fishing_item.dart';

class FishingItemFormScreen extends StatelessWidget {
  final FishingRepository repository = FishingRepository();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController weightController = TextEditingController();

  void saveItem(BuildContext context) {
    final name = nameController.text;
    final weight = double.tryParse(weightController.text) ?? 0.0;
    final item = FishingItem(name: name, weight: weight);
    repository.addItem(item).then((_) {
      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Adicionar Item de Pesca')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(controller: nameController, decoration: InputDecoration(labelText: 'Nome')),
            TextField(controller: weightController, decoration: InputDecoration(labelText: 'Peso')),
            ElevatedButton(onPressed: () => saveItem(context), child: Text('Salvar'))
          ],
        ),
      ),
    );
  }
}
