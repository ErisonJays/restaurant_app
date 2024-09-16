
import "package:flutter/material.dart";
import "package:restaurant_app/estilos/estilos.dart";
import "package:restaurant_app/widgets/botonesrestaurant.dart";

import "../widgets/botonesprincipal.dart";


class NuevaReserScren extends StatelessWidget {
  const NuevaReserScren({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Reservacion", style: tituloStilos,),
        backgroundColor: Colors.amber,
        toolbarHeight: 90,
        
        
      ),


      body: 
       BotonesRestaurant(),
      
       
      
    );
  }
}
