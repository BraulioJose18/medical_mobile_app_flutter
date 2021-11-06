import 'dart:convert';


class MedicalCheck {
  final int id;
  final double weight;
  final double temperature;
  final double pressure;
  final double saturation;
  final int idPatient;

  MedicalCheck(
      {required this.id,
        required this.weight,
        required this.temperature,
        required this.pressure,
        required this.saturation,
        required this.idPatient});

  factory MedicalCheck.fromJson(Map<String, dynamic> json) {
    // birth date have to be in date.toIso8601String();
    return MedicalCheck(
        id: json['id'],
        weight: json['weight'],
        temperature: json['temperature'],
        pressure: json['pressure'],
        saturation: json['saturation'],
        idPatient: json['patient']);
  }

  String toJson() {
    return jsonEncode(<String, dynamic>{
      'id': id,
      'weight': weight,
      'temperature': temperature,
      'pressure': pressure,
      'saturation': saturation,
      'patient': idPatient
    });
  }
}
