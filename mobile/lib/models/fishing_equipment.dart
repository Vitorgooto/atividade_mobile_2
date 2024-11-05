class FishingEquipment {
  final int? id;
  final String name;
  final List<int> items;

  FishingEquipment({this.id, required this.name, required this.items});

  factory FishingEquipment.fromJson(Map<String, dynamic> json) {
    return FishingEquipment(
      id: json['id'],
      name: json['name'],
      items: List<int>.from(json['items']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'items': items,
    };
  }
}
