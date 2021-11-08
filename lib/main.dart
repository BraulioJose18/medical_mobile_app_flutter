import 'package:flutter/material.dart';
import 'package:medical_mobile_app_flutter/models/patient.dart';
import 'package:medical_mobile_app_flutter/pages/form_add_medical_check.dart';
import 'package:medical_mobile_app_flutter/pages/form_add_patient.dart';
import 'package:medical_mobile_app_flutter/pages/home_patients.dart';
import 'package:medical_mobile_app_flutter/pages/medical_check_detail.dart';
import 'package:medical_mobile_app_flutter/pages/patient_detail.dart';
import 'package:medical_mobile_app_flutter/widgets/custom_list_tile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'detail_patient':(context) => DetailPatient(),
        'detail_check':(context) => DetailMedicalCheck(),
        'form_add_patient': (context) => FormPatientPage(),
        'form_add_check': (context) => FormMedicalCheckPage(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePagePatients()
    );
  }

}
