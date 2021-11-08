import 'dart:convert';

class Patient {
  int id;
  String fullName;
  DateTime birthDate;
  double height;
  String address;
  double locationLatitude;
  double locationLongitude;

  Patient(
      {this.id,
        this.fullName,
        this.birthDate,
        this.height,
        this.address,
        this.locationLatitude,
        this.locationLongitude});

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
Patient patient1 = Patient(
    id: 1,
    fullName: 'Pedrito Ruiz',
    birthDate: DateTime.now(),
    height: 160,
    address: 'Calle Siempre Viva 515',
    locationLatitude: -500,
    locationLongitude: 5000);

Patient patient2 = Patient(
    id: 2,
    fullName: 'Luisa Manrique',
    birthDate: DateTime.now(),
    height: 170,
    address: 'La Joya 120',
    locationLatitude: -800,
    locationLongitude: 1000);

Patient patient3 = Patient(
    id: 3,
    fullName: 'Nadia Contreras',
    birthDate: DateTime.now(),
    height: 120,
    address: 'Calle July 582',
    locationLatitude: -700,
    locationLongitude: 5010);


