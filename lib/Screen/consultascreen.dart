import "package:flutter/material.dart";
import "package:restaurant_app/data/data.dart";
import "package:restaurant_app/estilos/estilos.dart";

import "../widgets/botonesprincipal.dart";


class ConsultaScreen extends StatelessWidget {
  const ConsultaScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    String nombre = emberRegistro["nombre"];
    
    return Scaffold(

      appBar: AppBar(
        title: const Text("Consulta", style: tituloStilos,),
        backgroundColor: Colors.amber,
        toolbarHeight: 90,
        
        
      ),


      body: 
      
      Text(nombre),
      
      
      
    );
  }
}
