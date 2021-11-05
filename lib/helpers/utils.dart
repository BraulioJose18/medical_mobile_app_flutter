import 'package:flutter/material.dart';
import 'package:medical_mobile_app_flutter/models/patient.dart';

class Utils {
  static List<Patient> getMockedPatients(){
    return [
      Patient(
          name: "Luis Miguel",
          last_name: "Patiño",
          birthday_date: "12/12/2000",
          address: "Calle siempre viva 256",
          latitude: "1000",
          longitude: "-5245",
          color: Colors.blue,
          img: "patientImg",
          icon: "icon",
          patients: []
      ),
      Patient(
          name: "Luis Miguel",
          last_name: "Patiño",
          birthday_date: "12/12/2000",
          address: "Calle siempre viva 256",
          latitude: "1000",
          longitude: "-5245",
          color: Colors.blue,
          img: "patientImg",
          icon: "icon",
          patients: []
      ),
      Patient(
          name: "Luis Miguel",
          last_name: "Patiño",
          birthday_date: "12/12/2000",
          address: "Calle siempre viva 256",
          latitude: "1000",
          longitude: "-5245",
          color: Colors.blue,
          img: "patientImg",
          icon: "icon",
          patients: []
      ),
      Patient(
          name: "Luis Miguel",
          last_name: "Patiño",
          birthday_date: "12/12/2000",
          address: "Calle siempre viva 256",
          latitude: "1000",
          longitude: "-5245",
          color: Colors.blue,
          img: "patientImg",
          icon: "icon",
          patients: []
      )
    ];
  }
}