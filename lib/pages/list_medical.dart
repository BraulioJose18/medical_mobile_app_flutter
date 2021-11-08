import 'package:flutter/material.dart';
import 'package:medical_mobile_app_flutter/controllers/list_medical_check_controller.dart';
import 'package:medical_mobile_app_flutter/controllers/list_patient_controller.dart';
import 'package:medical_mobile_app_flutter/widgets/custom_button.dart';
import 'package:medical_mobile_app_flutter/widgets/custom_button_check.dart';
import 'package:medical_mobile_app_flutter/widgets/custom_list_tile.dart';
import 'package:medical_mobile_app_flutter/widgets/custom_list_tile_medical_check.dart';


class ListMedicalPage extends StatelessWidget {

  ListMedicalCheckController controller = ListMedicalCheckController.instancia;
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: controller.patientsList,
        builder: (context, value, child){
          return Container(
            child: Column(
              children: <Widget> [
                CustomButtonCheck(),
                Expanded(
                    child: ListView.builder(
                      itemCount: value.length,
                      itemBuilder: (context,picker){
                        return Dismissible(
                            background: Container(color: Colors.red),
                            onDismissed: (direction) => value.removeAt(picker),
                            key: Key(picker.toString()),
                            child: CustomListTileMedical(medicalCheck: value[picker]));
                      },
                    )
                )
              ],
            ),
          );
        });
  }
}

