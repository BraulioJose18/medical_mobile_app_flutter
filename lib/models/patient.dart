import 'dart:ui';

class Patient {
  final String full_name;
  final String birthday_date;
  final String address;
  final String latitude;
  final String longitude;
  final Color color;
  final String img;
  final String icon;
  final List<Patient> patients;

  Patient({
    required this.full_name,
    required this.birthday_date,
    required this.address,
    required this.latitude,
    required this.longitude,
    required this.color,
    required this.img,
    required this.icon,
    required this.patients,
  });
}
