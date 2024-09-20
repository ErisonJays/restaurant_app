

import 'package:flutter/material.dart';
import 'package:restaurant_app/estilos/estilos.dart';

import '../data/data.dart';
import 'cardfeed.dart';

class ListCardFeed extends StatelessWidget {
  const ListCardFeed({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    
    
    return ListView.builder(   
              //EL listview.builder creara una cantidad determinada o infinita de elementos.
      itemCount: ListCard.length,
      itemBuilder: (context, index){
      return  CardFeed( 
        card: ListCard[index],
        );
    });
  }
}
