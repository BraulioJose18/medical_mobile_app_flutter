import 'package:flutter/material.dart';
import 'package:medical_mobile_app_flutter/pages/patient_list.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'Raleway'),
    debugShowCheckedModeBanner: false,
    home: PatientListPage()
  ));
}