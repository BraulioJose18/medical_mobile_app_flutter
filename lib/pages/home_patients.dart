
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_mobile_app_flutter/models/patient.dart';
import 'package:medical_mobile_app_flutter/widgets/custom_button.dart';
import 'package:medical_mobile_app_flutter/widgets/custom_list_tile.dart';

Patient patient1 = Patient(
    id: 1,
    fullName: 'Pedrito',
    birthDate: DateTime.now(),
    height: 170,
    address: 'Calle Siempre Viva 515',
    locationLatitude: -7800,
    locationLongitude: 5000);

List<Patient> patients = [
  patient1, patient1, patient1, patient1, patient1, patient1, patient1, patient1, patient1, patient1, patient1, patient1, patient1, patient1, patient1, patient1
];

class HomePagePatients extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text('Medical App Flutter'),
      ),
      body: Column(

        children: <Widget> [
          CustomButton(),
          Expanded(
              child: ListView(
                children: <Widget>[
                  for (int i = 0; i < patients.length; i++)
                    CustomListTile(patient: patients[i],)
                ],
              )
          )
        ],
      ),
    );
  }
}

