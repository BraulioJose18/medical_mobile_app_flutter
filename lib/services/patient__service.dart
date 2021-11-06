import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:medical_mobile_app_flutter/models/patient.dart';

const String BASE_URL = "http://10.0.2.2:8000";

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

Future<Patient> createPatient(Patient patient) async {
  final response = await http.post(
    Uri.parse('$BASE_URL/patient/'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: patient.toJson(),
  );
  if (response.statusCode == 201) {
    return Patient.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to create patient.');
  }
}

Future<Patient> updatePatient(Patient patient) async {
  final response = await http.put(
    Uri.parse('$BASE_URL/patient/${patient.id}'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: patient.toJson(),
  );
  if (response.statusCode == 200) {
    return Patient.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to update patient.');
  }
}

Future<void> destroyPatient(Patient patient) async {
  final response = await http.delete(
    Uri.parse('$BASE_URL/patient/${patient.id}'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: patient.toJson(),
  );
  if (response.statusCode != 204) {
    throw Exception('Failed to update patient.');
  }
}
