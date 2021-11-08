import 'package:flutter/cupertino.dart';
import 'package:medical_mobile_app_flutter/models/medical_check.dart';
import 'package:medical_mobile_app_flutter/models/patient.dart';

class ListMedicalCheckController {
  static final ListMedicalCheckController instancia = ListMedicalCheckController._();

  static List<MedicalCheck> medicalCheck = [
    medical1, medical2
  ];

  ListMedicalCheckController._();
  
  ValueNotifier<List<MedicalCheck>> patientsList = ValueNotifier<List<MedicalCheck>>(medicalCheck);

}