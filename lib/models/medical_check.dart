import 'dart:ui';

class MedicalCheck {
  final String weight;
  final String temperature;
  final String pressure;
  MedicalCheck({
    required this.weight,
    required this.temperature,
    required this.pressure,
    required this.saturation,
  });

  final String saturation;
}
