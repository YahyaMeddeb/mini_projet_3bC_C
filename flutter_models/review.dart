
class Review {
  final String id;
  final String userId;
  final String itemId;
  final int stars;
  final String comment;

  Review({
    required this.id,
    required this.userId,
    required this.itemId,
    required this.stars,
    required this.comment,
  });

  Map<String, dynamic> toMap() => {
        'userId': userId,
        'itemId': itemId,
        'stars': stars,
        'comment': comment,
      };

  factory Review.fromMap(Map<String, dynamic> map, String id) {
    return Review(
      id: id,
      userId: map['userId'] ?? '',
      itemId: map['itemId'] ?? '',
      stars: map['stars'] ?? 0,
      comment: map['comment'] ?? '',
    );
  }
}
