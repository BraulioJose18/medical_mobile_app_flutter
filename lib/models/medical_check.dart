import 'dart:convert';


class MedicalCheck {
  int id;
  double weight;
  double temperature;
  double pressure;
  double saturation;
  int idPatient;

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
MedicalCheck medical1 = MedicalCheck(
  id: 1,
  weight: 40,
  temperature: 35,
  pressure: 20,
  saturation: 30,
);MedicalCheck medical2 = MedicalCheck(
  id: 2,
  weight: 67,
  temperature: 37,
  pressure: 25,
  saturation: 32,
);
