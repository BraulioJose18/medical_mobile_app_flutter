import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_mobile_app_flutter/models/medical_check.dart';
import 'package:medical_mobile_app_flutter/models/patient.dart';

import 'list_medical.dart';

class DetailPatient extends StatelessWidget {

  DetailPatient();
  @override
  Widget build(BuildContext context) {
    final Arguments arguments = ModalRoute.of(context).settings.arguments as Arguments;
    return Scaffold(
        appBar: AppBar(
          title: Text('Actualizar Información'),
        ),
        body: Column(
          children: <Widget>[
            SingleChildScrollView(
              child: Form(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
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
                          onChanged: (value) => {},
                          controller: TextEditingController()..text = 'Pedrito Ruiz',
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
                          onChanged: (value) => {},
                          controller: TextEditingController()..text = 'Calle Siempre Viva 515',
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
                          onChanged: (value) => {},
                          controller: TextEditingController()..text = '5000',
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
                          onChanged: (value) => {},
                          controller: TextEditingController()..text = '-500',
                        ),
                        SizedBox(height: 32.0),
                        RaisedButton(
                          color: Theme.of(context).primaryColor,
                          onPressed: (){
                          },
                          child: Text(
                            'Guardar cambios',
                            style: TextStyle(color: Colors.white),
                          ),)
                      ],
                    ),
                  )
              ),
            ),
            Expanded(
                child: ListMedicalPage()),
          ],
        )
    );
  }
}
class Arguments{
  final Patient patient;
  Arguments({this.patient, MedicalCheck medical});
}
