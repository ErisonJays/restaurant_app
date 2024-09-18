import "package:flutter/material.dart";
import "package:restaurant_app/Screen/emberscreen.dart";
import "package:restaurant_app/Screen/nuevaReserScreen.dart";
import "package:restaurant_app/data/data.dart";
import "package:restaurant_app/estilos/estilos.dart";
import "package:restaurant_app/widgets/listcardfeed.dart";

import "../widgets/botonesprincipal.dart";
import "appbar/appbarconsulta.dart";
import "homescreen.dart";


class ConsultaScreen extends StatelessWidget {
   ConsultaScreen({
    super.key,
  });

//String restaurante = ember["restaurante"];
int cantidadRegistro = ember.length;

  @override
  Widget build(BuildContext context) {

    //String nombre = emberRegistro["nombre"];

    return Scaffold(

      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Column(
          children: [
            Text("Consulta", style: tituloStilos,),
             Text("Lista de reservaciones", style:parrafoStilos),
             
          ],
        ),
        backgroundColor: Colors.amber,
        toolbarHeight: 90,
         actions: <Widget>[
        AppBarConsulta(),
      ],
        
      ),


      body: 
      
      ListCardFeed(),
      // Column(
      //   children: [
      //   const  Text("Lista de reservaciones", style:textoStilos),
      //  //Text("$ember"),
      // //  Text("Restaurante: $restaurante",style: parrafoStilos,),
        
      // //   for( int i = 0; i < cantidadRegistro; i--)   Text(ember[i],),
      
      //  ],
      // ),
          
      
    );
  }
}

