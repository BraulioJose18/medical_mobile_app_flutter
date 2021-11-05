import 'package:flutter/material.dart';
import 'package:medical_mobile_app_flutter/models/patient.dart';
import 'package:medical_mobile_app_flutter/widgets/iconfont.dart';

class PatientCard extends StatelessWidget {
  Patient? patient;
  Function? onCardClick;

  PatientCard({ this.patient, this.onCardClick });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        this.onCardClick!();
      },
      child: Container(
          margin: EdgeInsets.all(20),
          height: 150,
          child: Stack(
            children: [
              Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                      'assets/imgs/cat1.png',
                      fit: BoxFit.cover),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                    height: 120,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.black.withOpacity(0.7),
                              Colors.transparent
                            ]))),
              ),
              Positioned(
                bottom: 0,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      IconFont(
                          color: patient!.color,
                          iconName: patient!.icon),
                      const SizedBox(width: 10),
                      Text(patient!.name!,
                          style: const TextStyle(color: Colors.white, fontSize: 25))
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}