
class UserModel {
  final String id;
  final String name;
  final String email;
  final double rating;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    this.rating = 0,
  });

  Map<String, dynamic> toMap() => {
    'id': id,
    'name': name,
    'email': email,
    'rating': rating,
  };

  factory UserModel.fromMap(Map<String, dynamic> map, String id) {
    return UserModel(
      id: id,
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      rating: (map['rating'] ?? 0).toDouble(),
    );
  }
}
