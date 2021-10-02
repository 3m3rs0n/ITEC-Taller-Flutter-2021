import 'package:flutter/material.dart';
class SegundaPantalla extends StatelessWidget {
  static String route = "segunda_pantalla";

  @override
  Widget build(BuildContext context) {
    return Material(
          child: Scaffold(
        appBar: AppBar(
          title: Text("Segunda pantalla"),
        ),
        body: Center(
          child: RaisedButton(
            child: Text("Volver"),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}