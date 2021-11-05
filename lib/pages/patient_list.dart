import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_mobile_app_flutter/helpers/iconfonthelper.dart';
import 'package:medical_mobile_app_flutter/helpers/utils.dart';
import 'package:medical_mobile_app_flutter/models/patient.dart';
import 'package:medical_mobile_app_flutter/pages/selected_patient.dart';
import 'package:medical_mobile_app_flutter/widgets/iconfont.dart';
import 'package:medical_mobile_app_flutter/widgets/patientcard.dart';

class PatientListPage extends StatelessWidget{
  List<Patient> patients = Null as List<Patient>;//Utils.getMockedPatients();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: IconFont(
          iconName: IconFontHelper.LOGO,
          color: Colors.green,
          size:40,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Text('Seleccione un paciente:',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black)
                ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: patients.length,
                  itemBuilder: (BuildContext ctx, int index){
                    return PatientCard(
                      patient: patients[index],
                      onCardClick: (){
                        //Navegar a otra vista
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SelectedPatientPage()
                            )
                        );
                      }
                    );
                  }
              )
            )
          ],
        )
      )
    );
  }
  
}