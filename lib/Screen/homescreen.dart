
import "package:flutter/material.dart";
import "package:restaurant_app/Screen/consultascreen.dart";
import "package:restaurant_app/estilos/estilos.dart";

import "../widgets/botonesprincipal.dart";
import "appbar/appbarhome.dart";
import "nuevaReserScreen.dart";


class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Senator App", style: tituloStilos,),
         automaticallyImplyLeading: false, // eiminar botor por defecto de volver a pantalla
        backgroundColor: Colors.amber,
        toolbarHeight: 90,
        actions: <Widget>[
        AppBarHome(),
      ],
        
        
      ),


      body: 
      
      
       BotonesPrincipal(),
      
    );
  }
}
