import 'dart:ui';

class Patient {
  late String name;
  late String last_name;
  late String birthday_date;
  late String address;
  late String latitude;
  late String longitude;
  late Color color;
  late String img;
  late String icon;
  late List<Patient> patients;

  Patient(
    {
      required this.name,
      required this.last_name,
      required this.birthday_date,
      required this.address,
      required this.latitude,
      required this.longitude,
      required this.color,
      required this.img,
      required this.icon,
      required this.patients,
    }
  );
}