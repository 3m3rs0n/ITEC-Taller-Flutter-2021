import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      home: SegundoWidget(),
    );
  }
}

class SegundoWidget extends StatefulWidget {
  @override
  _SegundoWidgetState createState() => _SegundoWidgetState();
}

class _SegundoWidgetState extends State<SegundoWidget> {
  String texto;
  String saludo = "Hola mundo";
  int numero;

  void sumar() {
    setState(() {
      numero++;
    });
  }

  @override
  void initState() {
    texto = "Soy un cupertino button";
    numero = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print(size.width);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: sumar,
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text("Mi primera aplicacion en flutter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Usted presiono el boton esta cantidad de veces:"),
            Text(numero.toString(), style: TextStyle(fontSize: 32)),
            SizedBox(height: 100),
            CupertinoButton(
                color: Colors.blue[900],
                child: Text(texto,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 20,
                        fontFamily: GoogleFonts.inconsolata().fontFamily)),
                //Algunas propiedades requieren como parametro a una funcion
                //y esa funcion en algunos casos sera una funcion anonima
                onPressed: () {
                  print(texto);
                  //las funciones (logica) las finalizamos con punto y coma
                  print("Hola mundo");
                  saludo = "Hola, que tal";
                  setState(() {
                    texto = "Boton Presionado";
                  });
                  print(texto);
                }),
            Flexible(child: Text("Nuevo Texto")),
            Container(
                color: Colors.green,
                height: 70,
                width: size.width,
                child: Text(
                  "Texto Agrandado",
                  style: TextStyle(fontSize: size.width / 15),
                ))
          ],
        ),
      ),
    );
  }
}
