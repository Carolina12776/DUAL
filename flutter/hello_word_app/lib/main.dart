import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());//funcion principal que nos permite ejecutar la app
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});//clase que nos permite crear la app
  @override  //metodo que nos permite construir la app
  Widget build(BuildContext context) { 
    return const MaterialApp( //widget principal de la app dice que dise;o usar el material design
     debugShowCheckedModeBanner: false, //elimina el banner de debug
      home: Scaffold(  //widget que nos permite crear la estructura de la app
        backgroundColor:  Color.fromARGB(255, 9, 7, 78), //color de fondo de la app
        body: Center(//widget que nos permite centrar el contenido de la app
          child: Text('Hola Mundo',
           style: TextStyle(fontSize: 45,//estilo del texto
            color: Color.fromARGB(255, 177, 210, 216)),),
        ),
      ),
    );
  }
  
}