
class Reservation {
  final String id;
  final String itemId;
  final String renterId;
  final DateTime startDate;
  final DateTime endDate;
  final String status;

  Reservation({
    required this.id,
    required this.itemId,
    required this.renterId,
    required this.startDate,
    required this.endDate,
    this.status = 'pending',
  });

  Map<String, dynamic> toMap() => {
        'itemId': itemId,
        'renterId': renterId,
        'startDate': startDate.toIso8601String(),
        'endDate': endDate.toIso8601String(),
        'status': status,
      };

  factory Reservation.fromMap(Map<String, dynamic> map, String id) {
    return Reservation(
      id: id,
      itemId: map['itemId'] ?? '',
      renterId: map['renterId'] ?? '',
      startDate: DateTime.parse(map['startDate']),
      endDate: DateTime.parse(map['endDate']),
      status: map['status'] ?? 'pending',
    );
  }
}
