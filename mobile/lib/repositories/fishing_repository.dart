import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/fishing_item.dart';
import '../models/fishing_equipment.dart';

class FishingRepository {
  final String baseUrl = 'http://localhost:3000';

  Future<List<FishingItem>> fetchItems() async {
    final response = await http.get(Uri.parse('$baseUrl/ItemsDePesca'));
    if (response.statusCode == 200) {
      List data = jsonDecode(response.body);
      return data.map((item) => FishingItem.fromJson(item)).toList();
    } else {
      throw Exception('Erro ao buscar itens de pesca');
    }
  }

  Future<List<FishingEquipment>> fetchEquipment() async {
    final response = await http.get(Uri.parse('$baseUrl/fishingEquipment'));
    if (response.statusCode == 200) {
      List data = jsonDecode(response.body);
      return data.map((equipment) => FishingEquipment.fromJson(equipment)).toList();
    } else {
      throw Exception('Erro ao buscar equipamentos de pesca');
    }
  }

  Future<void> addItem(FishingItem item) async {
    final response = await http.post(
      Uri.parse('$baseUrl/ItemsDePesca'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(item.toJson()),
    );
    if (response.statusCode != 201) {
      throw Exception('Erro ao adicionar item de pesca');
    }
  }

  Future<void> updateItem(FishingItem item) async {
    final response = await http.put(
      Uri.parse('$baseUrl/ItemsDePesca/${item.id}'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(item.toJson()),
    );
    if (response.statusCode != 200) {
      throw Exception('Erro ao atualizar item de pesca');
    }
  }

  Future<void> deleteItem(int id) async {
    final response = await http.delete(Uri.parse('$baseUrl/ItemsDePesca/$id'));
    if (response.statusCode != 200) {
      throw Exception('Erro ao deletar item de pesca');
    }
  }
}
