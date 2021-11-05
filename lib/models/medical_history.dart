import 'package:medical_mobile_app_flutter/models/patient.dart';
import 'medical_check.dart';

class MedicalHistory {
  final int id;
  final Patient patient;
  final MedicalCheck medicalCheck;

  MedicalHistory(
      {required this.id, required this.patient, required this.medicalCheck});

  factory MedicalHistory.fromJson(Map<String, dynamic> json) {
    // birth date have to be in date.toIso8601String();
    return MedicalHistory(
      id: json['id'],
      patient: Patient.fromJson(json['patient']),
      medicalCheck: MedicalCheck.fromJson(json['medical_check'])
    );
  }
}
