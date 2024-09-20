import 'package:flutter/material.dart';
import 'package:restaurant_app/Screen/consultascreen.dart';
import 'package:restaurant_app/Screen/nuevaReserScreen.dart';

import '../estilos/estilos.dart';


class BotonesPrincipal extends StatelessWidget {
  const BotonesPrincipal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        
               
        children: [
         const Text("Reservaciones", style: textoStilos,),
          Row(
            
            children: [
              
             
               ElevatedButton.icon(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> NuevaReserScren()));
               }, 
               
               label:  const Text("Nueva reservacion", style: textoStilos, ),
               icon: const Icon(Icons.add_circle_outline),), 
            ],
          ),

                
           Row(
            children: [
             
              ElevatedButton.icon(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ConsultaScreen()));
              },label: const Text("Consultar", style: textoStilos,),
              icon: const Icon(Icons.search),
               
           ),]
          ),
      
          Row(
            
            children: [
             
             ElevatedButton.icon(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ConsultaScreen()));
             } , label: const Text("Imprimir", style: textoStilos,),
             icon: const Icon(Icons.print),
             )
            ],
          ),

        
          Padding(
             padding: const EdgeInsets.only(top:50),
            child: Image.asset("assets/img/restaurant.jpg", ),
          ),
      
      
        ],

        
        
      ),
    );
  }
}