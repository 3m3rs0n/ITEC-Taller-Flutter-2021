import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Material App nos permite obtener una guia de estilos para nuestra aplicacion
    return MaterialApp(
      //las propiedas de los widgets los separamos con una coma
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: CupertinoButton(
              color: Colors.blue[900],
              child: const Text("Soy un cupertino button",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 20,
                  )),
              //Algunas propiedades requieren como parametro a una funcion
              //y esa funcion en algunos casos sera una funcion anonima
              onPressed: () {
                //las funciones (logica) las finalizamos con punto y coma
                print("Hola mundo");
              }),
        ),
      ),
    );
  }
}
