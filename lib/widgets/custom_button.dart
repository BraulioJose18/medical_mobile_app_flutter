import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        print('boton presionado');
        Navigator.pushNamed(context, 'form_add_patient');
      },
      child: Container(
        height: 60.0,
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.red),
            borderRadius: BorderRadius.circular(8.0)
        ),
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(8.0),
        child: const Center(
          child: Text(
            'Agregar Paciente',
            style: TextStyle(color: Colors.red, fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}