
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_mobile_app_flutter/controllers/list_patient_controller.dart';
import 'package:medical_mobile_app_flutter/models/patient.dart';

GlobalKey<FormState> formPatientKey = GlobalKey<FormState>();
GlobalKey<ScaffoldState> formPageKey = GlobalKey<ScaffoldState>();

class FormPatientPage extends StatefulWidget {

  @override
  State<FormPatientPage> createState() => _FormPatientPageState();
}

class _FormPatientPageState extends State<FormPatientPage> {

  TextEditingController _fullnameController;
  TextEditingController _addressController;
  TextEditingController _birthdayController;
  TextEditingController _latController;
  TextEditingController _lonController;
  TextEditingController _heightController;

  final ListPatientController _controller = ListPatientController.instancia;
  Patient _patient = Patient();

  @override
  void initState() {
    super.initState();
    _fullnameController = TextEditingController(text: "");
    _addressController = TextEditingController(text: "");
    _birthdayController = TextEditingController(text: "");
    _latController = TextEditingController(text: "");
    _lonController = TextEditingController(text: "");
    _heightController = TextEditingController(text: "");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: formPageKey,
      appBar: AppBar(
        title: Text('Nuevo Paciente'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formPatientKey,
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
                        "https://www.creativefabrica.com/wp-content/uploads/2019/04/Patient-icon-by-hellopixelzstudio-580x386.jpg"),
                    fit: BoxFit.cover)),
                ),
                SizedBox(height: 30.0),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                      hintText: 'Nombre Completo',
                      labelText: 'Nombre Completo',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Theme.of(context).primaryColor
                      )
                    )
                  ),
                  onChanged: (value) => _patient.fullName = value,
                  controller: _fullnameController,
                ),
                SizedBox(height: 8.0),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.map),
                      labelText: 'Dirección',
                      hintText: 'Dirección',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor
                          )
                      )
                  ),
                  onChanged: (value) => _patient.address = value,
                  controller: _addressController,
                ),
                SizedBox(height: 8.0),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.map),
                      labelText: 'Latitud',
                      hintText: 'Latitud',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor
                          )
                      )
                  ),
                  onChanged: (value) => _patient.locationLatitude = value as double,
                  controller: _latController,
                ),
                SizedBox(height: 8.0),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.map),
                      labelText: 'Longitud',
                      hintText: 'Longitud',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor
                          )
                      )
                  ),
                  onChanged: (value) => _patient.locationLongitude = value as double,
                  controller: _lonController,
                ),
                SizedBox(height: 8.0),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.height),
                      labelText: 'Altura',
                      hintText: 'Altura',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor
                          )
                      )
                  ),
                  onChanged: (value) => _patient.height = value as double,
                  controller: _heightController,
                ),
                SizedBox(height: 32.0),
                RaisedButton(
                  color: Theme.of(context).primaryColor,
                    onPressed: (){
                    _controller.patientsList.value = List.from(_controller.patientsList.value)..add(_patient);
                    },
                child: Text(
                  'Agregar Paciente',
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
