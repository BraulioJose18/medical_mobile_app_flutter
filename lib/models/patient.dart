import 'dart:convert';

class Patient {
  final int id;
  final String fullName;
  final DateTime birthDate;
  final double height;
  final String address;
  final double locationLatitude;
  final double locationLongitude;

  Patient(
      {required this.id,
        required this.fullName,
        required this.birthDate,
        required this.height,
        required this.address,
        required this.locationLatitude,
        required this.locationLongitude});

  factory Patient.fromJson(Map<String, dynamic> json) {
    // birth date have to be in date.toIso8601String();
    return Patient(
      id: json['id'],
      fullName: json['full_name'],
      birthDate: DateTime.parse(json['birth_date']),
      height: json['height'],
      address: json['address'],
      locationLatitude: json['location_latitude'],
      locationLongitude: json['location_longitude'],
    );
  }

  String toJson() {
    return jsonEncode(<String, dynamic>{
      'id': id,
      'full_name': fullName,
      'birth_date': birthDate.toIso8601String().split('T')[0],
      'height': height,
      'address': address,
      'location_latitude': locationLatitude,
      'location_longitude': locationLongitude
    });
  }
}
