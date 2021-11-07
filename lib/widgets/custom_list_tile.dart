import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_mobile_app_flutter/models/patient.dart';
import 'package:medical_mobile_app_flutter/pages/patient_detail.dart';

class CustomListTile extends StatelessWidget {
  final Patient patient;
  CustomListTile({this.patient});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        Navigator.pushNamed(context, 'detail_patient',arguments: Arguments(patient: patient));
      },
      trailing: Icon(Icons.edit),
      leading: Icon(Icons.person),
      title: Text(patient.fullName),
      subtitle: Text(patient.address),
    );
  }
}