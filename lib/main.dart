import 'package:flutter/material.dart';
import 'package:medical_mobile_app_flutter/models/patient.dart';
import 'package:medical_mobile_app_flutter/pages/form_add_patient.dart';
import 'package:medical_mobile_app_flutter/pages/home_patients.dart';
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
        'form_add_patient': (context) => FormPatientPage()
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
