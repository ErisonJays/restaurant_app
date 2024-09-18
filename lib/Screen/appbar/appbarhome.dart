import 'package:flutter/material.dart';
import 'package:restaurant_app/Screen/consultascreen.dart';

import '../nuevaReserScreen.dart';


class AppBarHome extends StatelessWidget {
  const AppBarHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(Icons.add_circle_outline,size: 35,),
          tooltip: 'Ir a la pantalla principal',
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>NuevaReserScren(),));
          },
          
        ),
    
         IconButton(
          icon: const Icon(Icons.search, size: 35,),
          tooltip: 'Nueva Reservacion',
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ConsultaScreen(),));
          },
          
        ),
    
        
      ],
    );
  }
}
