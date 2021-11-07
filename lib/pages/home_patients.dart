
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_mobile_app_flutter/pages/list_patients.dart';

List<Widget> pages = [
  ListPatientsPage(),
  Container(color: Colors.blue),
];
class HomePagePatients extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _HomePagePatientsState();

}
class _HomePagePatientsState extends State<HomePagePatients>{

  int picker;

  @override
  void initState(){
   super.initState();
   picker = 0;
  }

  GlobalKey<ScaffoldState> homeKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
            children: <Widget>[
              DrawerHeader(
               padding: EdgeInsets.zero,
                child: Container(
                  color: Theme.of(context).primaryColor,
                )
              ),
              ListTile(
                title: Text('Pacientes'),
                onTap: (){
                  Navigator.pop(context);
                  setState(() {
                    picker = 0;
                  });
                },),
              ListTile(
                title: Text('Perfil'),
                onTap: (){
                  Navigator.pop(context);
                  setState(() {
                    picker = 1;
                  });
                },),
            ]
        ),
      ),
      floatingActionButton: Builder(
        builder: (BuildContext context){
          return FloatingActionButton(
            onPressed: () {
              Scaffold.of(context).showSnackBar(SnackBar(
                content:Text('Soy un snack'),
              ));
              print("Boton floante");

            },
            child: const Icon(Icons.add),
          );
        },
      ),
      appBar: AppBar(
        title: const Text('Medical App Flutter'),
      ),
      body: pages[picker]
    );
  }

}

