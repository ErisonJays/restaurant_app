import 'package:flutter/material.dart';
import 'package:restaurant_app/Screen/consultascreen.dart';
import 'package:restaurant_app/Screen/homescreen.dart';

class AppBarReservar extends StatelessWidget {
  const AppBarReservar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(Icons.home, size: 35,),
          tooltip: 'Ir a la pantalla principal',
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen(),));
          },
          
        ),
    
         IconButton(
          icon: const Icon(Icons.search, size: 35,),
          tooltip: 'Consultar Reservaciones',
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ConsultaScreen(),));
          },
          
        ),
    
        
      ],
    );
  }
}
