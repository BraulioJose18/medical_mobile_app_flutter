
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_mobile_app_flutter/controllers/list_medical_check_controller.dart';
import 'package:medical_mobile_app_flutter/controllers/list_patient_controller.dart';
import 'package:medical_mobile_app_flutter/models/medical_check.dart';
import 'package:medical_mobile_app_flutter/models/patient.dart';

GlobalKey<FormState> formMedicalKey = GlobalKey<FormState>();
GlobalKey<ScaffoldState> formPageKey = GlobalKey<ScaffoldState>();

class FormMedicalCheckPage extends StatefulWidget {

  @override
  State<FormMedicalCheckPage> createState() => _FormMedicalCheckPage();
}

class _FormMedicalCheckPage extends State<FormMedicalCheckPage> {

  TextEditingController _temperatureController;
  TextEditingController _pressureController;
  TextEditingController _saturationController;

  final ListMedicalCheckController _controller = ListMedicalCheckController.instancia;
  MedicalCheck _medicalCheck = MedicalCheck();

  @override
  void initState() {
    super.initState();
    _temperatureController = TextEditingController(text: "");
    _pressureController = TextEditingController(text: "");
    _saturationController = TextEditingController(text: "");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: formPageKey,
      appBar: AppBar(
        title: Text('Nueva Consulta Médica'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formMedicalKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Container(
                  height: 150.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    color: Colors.blue,
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://cdn0.iconfinder.com/data/icons/medical-checkup-2/512/MedicalCheckup_medical-check-up-hospital-doctor-512.png"),
                    fit: BoxFit.cover)),
                ),
                SizedBox(height: 30.0),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                      hintText: 'Temperature',
                      labelText: 'Temperature',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Theme.of(context).primaryColor
                      )
                    )
                  ),
                  onChanged: (value) => _medicalCheck.temperature = value as double,
                  controller: _temperatureController,
                ),
                SizedBox(height: 8.0),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.map),
                      labelText: 'Presión',
                      hintText: 'Presión',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor
                          )
                      )
                  ),
                  onChanged: (value) => _medicalCheck.pressure = value as double,
                  controller: _pressureController,
                ),
                SizedBox(height: 8.0),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.map),
                      labelText: 'Saturación',
                      hintText: 'Saturación',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor
                          )
                      )
                  ),
                  onChanged: (value) => _medicalCheck.saturation = value as double,
                  controller: _saturationController,
                ),
                SizedBox(height: 32.0),
                RaisedButton(
                  color: Theme.of(context).primaryColor,
                    onPressed: (){
                    _controller.patientsList.value = List.from(_controller.patientsList.value)..add(_medicalCheck);
                    },
                child: Text(
                  'Agregar Consulta Medica',
                  style: TextStyle(color: Colors.white),
                ),)
              ],
            ),
          )
        ),
      )
    );
  }
}
