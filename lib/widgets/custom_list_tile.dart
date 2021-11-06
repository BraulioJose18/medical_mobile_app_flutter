import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_mobile_app_flutter/models/patient.dart';

class CustomListTile extends StatelessWidget {
  final Patient patient;
  CustomListTile({required this.patient});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Icon(Icons.edit),
      leading: Icon(Icons.person),
      title: Text(patient.fullName),
      subtitle: Text(patient.address),
    );
  }
}