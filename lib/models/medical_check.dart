import 'dart:convert';


class MedicalCheck {
  final int id;
  final double weight;
  final double temperature;
  final double pressure;
  final double saturation;
  final int idPatient;

  MedicalCheck(
      {this.id,
        this.weight,
        this.temperature,
        this.pressure,
        this.saturation,
        this.idPatient});

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
