import 'package:flutter/material.dart';
import 'package:medical_mobile_app_flutter/controllers/list_patient_controller.dart';
import 'package:medical_mobile_app_flutter/services/api_service.dart';
import 'package:medical_mobile_app_flutter/widgets/custom_button.dart';
import 'package:medical_mobile_app_flutter/widgets/custom_list_tile.dart';


class ListPatientsDosPage extends StatelessWidget {

  ListPatientController controller = ListPatientController.instancia;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchAllPatients(),
        builder: (context, response){
          if(response.hasData){
            return ValueListenableBuilder(
                valueListenable: controller.patientsList,
                builder: (context, value, child){
                  return Container(
                    child: Column(
                      children: <Widget> [
                        CustomButton(),
                        Expanded(
                            child: ListView.builder(
                              itemCount: value.length,
                              itemBuilder: (context,picker){
                                return Dismissible(
                                    background: Container(color: Colors.red),
                                    onDismissed: (direction) => value.removeAt(picker),
                                    key: Key(picker.toString()),
                                    child: CustomListTile(patient: value[picker]));
                              },
                            )
                        )
                      ],
                    ),
                  );
                });
          }
          return Center(child: CircularProgressIndicator(),
          );
        },
        );
  }
}

