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

               
        children: [
          Row(
            children: [
              
              const Image(image: AssetImage('assets/img/nuevo.png'), width: 50,),
               TextButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> NuevaReserScren()));
               }, child:  const Text("Nueva reservacion", style: textoStilos, ),), 
            ],
          ),
      
           Row(
            children: [
             const Image(image: AssetImage('assets/img/consulta.png'), width: 50,),
              TextButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ConsultaScreen()));
              }, child: const Text("Consultar", style: textoStilos,))
            ],
          ),
      
          Row(
            
            children: [
              const Image(image: AssetImage('assets/img/impresora.png'), width: 50,),
             TextButton(onPressed: () {}, child: const Text("Imprimir", style: textoStilos,))
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