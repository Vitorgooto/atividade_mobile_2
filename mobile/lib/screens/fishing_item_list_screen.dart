import 'package:flutter/material.dart';
import '../repositories/fishing_repository.dart';
import '../models/fishing_item.dart';
import '../widgets/fishing_item_card.dart';

class FishingItemListScreen extends StatelessWidget {
  final FishingRepository repository = FishingRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Itens de Pesca')),
      body: FutureBuilder(
        future: repository.fetchItems(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final items = snapshot.data as List<FishingItem>;
            return ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return FishingItemCard(item: items[index]);
              },
            );
          } else if (snapshot.hasError) {
            return Center(child: Text('Erro ao carregar itens'));
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/form'),
        child: Icon(Icons.add),
      ),
    );
  }
}
