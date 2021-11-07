import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_mobile_app_flutter/models/patient.dart';

class DetailPatient extends StatelessWidget {

  DetailPatient();
  @override
  Widget build(BuildContext context) {
    final Arguments arguments = ModalRoute.of(context).settings.arguments as Arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(arguments.patient.fullName),
        centerTitle: true,
      ),
      body: Center(
        child: Text("No es mucho pero es trabajo honesto"),
      ),
    );
  }
}
class Arguments{
  final Patient patient;
  Arguments({this.patient});
}
