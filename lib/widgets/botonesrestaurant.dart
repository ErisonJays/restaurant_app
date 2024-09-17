import 'package:flutter/material.dart';
import 'package:restaurant_app/Screen/emberscreen.dart';
import 'package:restaurant_app/data/data.dart';

import '../estilos/estilos.dart';


class BotonesRestaurant extends StatelessWidget {
  BotonesRestaurant({
    super.key,
  });

  //int tanda1 = ember["tanda1"];
 // int tanda2 = embertanda2;



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(

               
        children: [

         Padding(
            padding:  EdgeInsets.only(bottom: 20),
            child: Text("Lista de nuestros restaurantes:",
             style: TextStyle(fontSize: 25, color: Colors.red[900],), ),
          ),

          Row(
            children: [
              const Image(image: AssetImage('assets/img/carne.jpg'), width: 100,),
              Column(
                children: [
                  TextButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>EmberScreen()));
                  }, child: const Text("Ember", style: textoStilos,)),
                 const Text("   Restaurante de carne", style: TextStyle(fontSize: 20),),
                ],
                
              ),
              
              
            ],
          ),
      
           Row(
            children: [
             const Image(image: AssetImage('assets/img/japones.jpg'), width: 100,),
              Column(
                children: [
                  TextButton(onPressed: () {}, child: const Text("Zao", style: textoStilos,)),
                  const Text("   Restaurante japones", style: TextStyle(fontSize: 20),),
                ],
              ),
              
            ],
          ),
      
          Row(
            
            children: [
              const Image(image: AssetImage('assets/img/italiano.jpg'), width: 100,),
             Column(
               children: [
                 TextButton(onPressed: () {}, child: const Text("Grappa", style: textoStilos,)),
                 const Text("   Restaurante italiano", style: TextStyle(fontSize: 20),),
               ],
             )
            ],
          ),

          
          Row(
            
            children: [
              const Image(image: AssetImage('assets/img/marisco.jpg'),  width: 100,),
              
             Column(
               children: [
                 TextButton(onPressed: () {}, child: const Text("Larimar", style: textoStilos,)),
                 const Text("   Restaurante de marisco", style: TextStyle(fontSize: 20),),
               ],
             )
            ],
          ),

        
          // Padding(
          //    padding: const EdgeInsets.only(top:50),
          //   child: Image.asset("assets/img/restaurant.jpg", ),
          // ),
      
      
        ],

        
        
      ),
    );
  }
}