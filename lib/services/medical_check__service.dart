import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:medical_mobile_app_flutter/models/medical_check.dart';

const String BASE_URL = "http://10.0.2.2:8000";

Future<List<MedicalCheck>> fetchMedicalChecksByPatientId(int patientId) async {
  final response = await http.get(Uri.parse('$BASE_URL/medical-check/?patient__id=$patientId'));
  if (response.statusCode == 200) {
    Iterable responseBody = json.decode(response.body);
    return List<MedicalCheck>.from(responseBody.map((model) => MedicalCheck.fromJson(model)));
  } else {
    throw Exception('Failed to load list of medical-check.');
  }
}

Future<MedicalCheck> fetchMedicalCheckById(int id) async {
  final response = await http.get(Uri.parse('$BASE_URL/medical-check/$id'));
  if (response.statusCode == 200) {
    return MedicalCheck.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load list of medical-check.');
  }
}

Future<MedicalCheck> createMedicalCheck(MedicalCheck medicalCheck) async {
  final response = await http.post(
    Uri.parse('$BASE_URL/medical-check/'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: medicalCheck.toJson(),
  );
  if (response.statusCode == 201) {
    return MedicalCheck.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to create medical-check.');
  }
}

Future<MedicalCheck> updateMedicalCheck(MedicalCheck medicalCheck) async {
  final response = await http.put(
    Uri.parse('$BASE_URL/medical-check/${medicalCheck.id}'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: medicalCheck.toJson(),
  );
  if (response.statusCode == 200) {
    return MedicalCheck.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to update patient.');
  }
}

Future<void> destroyMedicalCheck(MedicalCheck medicalCheck) async {
  final response = await http.delete(
    Uri.parse('$BASE_URL/medical-check/${medicalCheck.id}'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: medicalCheck.toJson(),
  );
  if (response.statusCode != 204) {
    throw Exception('Failed to update medical-check.');
  }
}
