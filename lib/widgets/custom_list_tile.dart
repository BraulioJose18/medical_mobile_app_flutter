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
        Navigator.pushNamed(context, 'detail_patient');
        //Navigator.pushNamed(context, 'form_add_patient',arguments: Arguments(patient: patient));
      },
      trailing: Icon(Icons.edit),
      leading: CircleAvatar(
        child: Text(patient.fullName[0].toUpperCase()),
      ),
      title: Text(patient.fullName),
      subtitle: Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
              Text('Dirección: '+ patient.address),
              Text('Coordenadas: ' + patient.locationLongitude.toString() +","+  patient.locationLatitude.toString()),
              Text('Altura: ' + patient.height.toString()),
            ],
          )
        ],
      )

    );
  }
}