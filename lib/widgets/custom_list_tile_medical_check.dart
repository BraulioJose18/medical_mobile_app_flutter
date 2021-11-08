import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_mobile_app_flutter/models/medical_check.dart';
import 'package:medical_mobile_app_flutter/models/patient.dart';
import 'package:medical_mobile_app_flutter/pages/patient_detail.dart';

class CustomListTileMedical extends StatelessWidget {
  final MedicalCheck medicalCheck;
  CustomListTileMedical({this.medicalCheck});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        Navigator.pushNamed(context, 'detail_check',arguments: Arguments(medical: medicalCheck));
      },
      trailing: Icon(Icons.edit),
      leading: Icon(Icons.person),
      title: Text("Consulta"),
      subtitle: Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
              Text('Presión: '+ medicalCheck.pressure.toString()),
              Text('Temperatura: ' + medicalCheck.temperature.toString()),
              Text('Saturación: ' + medicalCheck.saturation.toString()),
            ],
          )
        ],
      )

    );
  }
}