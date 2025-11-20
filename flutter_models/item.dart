
class Item {
  final String id;
  final String ownerId;
  final String title;
  final String description;
  final double pricePerDay;
  final List<String> photos;
  final String status;

  Item({
    required this.id,
    required this.ownerId,
    required this.title,
    required this.description,
    required this.pricePerDay,
    required this.photos,
    this.status = 'available',
  });

  Map<String, dynamic> toMap() => {
        'ownerId': ownerId,
        'title': title,
        'description': description,
        'pricePerDay': pricePerDay,
        'photos': photos,
        'status': status,
      };

  factory Item.fromMap(Map<String, dynamic> map, String id) {
    return Item(
      id: id,
      ownerId: map['ownerId'] ?? '',
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      pricePerDay: (map['pricePerDay'] ?? 0).toDouble(),
      photos: List<String>.from(map['photos'] ?? []),
      status: map['status'] ?? 'available',
    );
  }
}
