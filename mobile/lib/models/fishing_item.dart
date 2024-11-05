class FishingItem {
  final int? id;
  final String name;
  final double weight;

  FishingItem({this.id, required this.name, required this.weight});

  factory FishingItem.fromJson(Map<String, dynamic> json) {
    return FishingItem(
      id: json['id'] is int ? json['id'] : int.tryParse(json['id'].toString()),
      name: json['name'],
      weight: (json['weight'] as num).toDouble(),  // Garante que o peso seja tratado como double
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'weight': weight,
    };
  }
}
