import 'package:tralha_de_pesca/models/fishing_item.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Verifica inicialização de FishingItem', () {
    final item = FishingItem(id: 1, name: 'Vara de Pesca', weight: 1.5);
    expect(item.name, 'Vara de Pesca');
  });
}
