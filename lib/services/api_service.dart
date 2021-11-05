import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:medical_mobile_app_flutter/models/medical_history.dart';
import 'package:medical_mobile_app_flutter/models/patient.dart';

const String BASE_URL = "http://127.0.0.1:8000";

Future<List<Patient>> fetchAllPatients() async {
  final response = await http.get(Uri.parse('$BASE_URL/patient/'));
  if (response.statusCode == 200) {
    Iterable responseBody = json.decode(response.body);
    return List<Patient>.from(responseBody.map((model) => Patient.fromJson(model)));
  } else {
    throw Exception('Failed to load list of patients');
  }
}

Future<Patient> fetchPatientById(int id) async {
  final response = await http.get(Uri.parse('$BASE_URL/patient/$id'));
  if (response.statusCode == 200) {
    return Patient.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load list of patients');
  }
}

Future<List<MedicalHistory>> fetchMedicalHistoryByPatientId(int patientId) async {
  final response = await http.get(Uri.parse('$BASE_URL/medical_history/?patient__id=$patientId'));
  if (response.statusCode == 200) {
    Iterable responseBody = json.decode(response.body);
    return List<MedicalHistory>.from(responseBody.map((model) => MedicalHistory.fromJson(model)));
  } else {
    throw Exception('Failed to load list of patients');
  }
}
