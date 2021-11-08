import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_mobile_app_flutter/models/medical_check.dart';
import 'package:medical_mobile_app_flutter/models/patient.dart';

class DetailMedicalCheck extends StatelessWidget {

  DetailMedicalCheck();
  @override
  Widget build(BuildContext context) {
    final Arguments arguments = ModalRoute.of(context).settings.arguments as Arguments;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      ),
      body: Center(
        child: Text("No es mucho pero es trabajo honesto"),
      ),
    );
  }
}
class Arguments{
  final MedicalCheck medical;
  Arguments( {this.medical});
}
