
import "package:flutter/material.dart";
import "package:restaurant_app/estilos/estilos.dart";

import "../widgets/botonesprincipal.dart";


class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Senator App", style: tituloStilos,),
        backgroundColor: Colors.amber,
        toolbarHeight: 90,
        
        
      ),


      body: 
      
      
       BotonesPrincipal(),
      
    );
  }
}
