
import "package:flutter/material.dart";
import "package:restaurant_app/Screen/consultascreen.dart";
import "package:restaurant_app/Screen/homescreen.dart";
import "package:restaurant_app/estilos/estilos.dart";
import "package:restaurant_app/widgets/botonesrestaurant.dart";

import "../widgets/botonesprincipal.dart";
import "appbar/appbarrestaurantes.dart";


class NuevaReserScren extends StatelessWidget {
  const NuevaReserScren({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        
        title: const Text("Reservacion", style: tituloStilos,),
         automaticallyImplyLeading: false, // eiminar botor por defecto de volver a pantalla
        backgroundColor: Colors.amber,
        toolbarHeight: 90,
         actions: <Widget>[
        AppBarRestaurantes(),
      ],
        
      ),


      body: 
       BotonesRestaurant(),
      
       
      
    );
  }
}
