

import 'package:flutter/material.dart';
import 'package:restaurant_app/estilos/estilos.dart';
import 'package:restaurant_app/widgets/horariocard.dart';
import 'package:restaurant_app/widgets/nombrecard.dart';
import 'package:restaurant_app/widgets/restaurantecard.dart';




class CardFeed extends StatelessWidget {
  const CardFeed({
    super.key,
    required this.card,
    
  });

 final Map<String,String> card;

  @override
  Widget build(BuildContext context) {




    return Container(
      
      margin: const EdgeInsets.only(top: 4),
     // padding: EdgeInsets.all(20),
      width: double.infinity, //tamano de la pagina
      height: 80,
      decoration: BoxDecoration(color: Colors.amber[200],),
      
      child:  Column(
       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        //TitleCard(name: card["name"]!), // ! indica que el valor no es nulo
       NombreCardFeed(nombre: card["nombre"]!,),
       RestauranteCardFeed(restaurante: card["restaurante"]!,),
       HorarioCardFeed(horario: card["horario"]!,),
            
            
        ],
      )
    );
  }
}




