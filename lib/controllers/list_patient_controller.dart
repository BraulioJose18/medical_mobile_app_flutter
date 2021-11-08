import 'package:flutter/cupertino.dart';
import 'package:medical_mobile_app_flutter/models/patient.dart';

class ListPatientController {
  static final ListPatientController instancia = ListPatientController._();

  static List<Patient> patient = [
    patient1, patient2, patient3
  ];

  ListPatientController._();
  
  ValueNotifier<List<Patient>> patientsList = ValueNotifier<List<Patient>>(patient);

}