import 'package:tralha_de_pesca/repositories/fishing_repository.dart';
import 'package:tralha_de_pesca/models/fishing_item.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final repository = FishingRepository();

  test('Busca itens de pesca do backend', () async {
    final items = await repository.fetchItems();
    expect(items.isNotEmpty, true);
  });

  test('Adiciona um item de pesca ao backend', () async {
    final item = FishingItem(name: 'Linha de Pesca', weight: 0.1);
    await repository.addItem(item);
    final items = await repository.fetchItems();
    expect(items.any((i) => i.name == 'Linha de Pesca'), true);
  });
}
