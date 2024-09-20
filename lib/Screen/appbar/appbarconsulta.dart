import 'package:flutter/material.dart';
import 'package:restaurant_app/Screen/nuevaReserScreen.dart';

import '../homescreen.dart';

class AppBarConsulta extends StatelessWidget {
  const AppBarConsulta({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(Icons.home,size: 35,),
          tooltip: 'Ir a la pantalla principal',
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen(),));
          },
          
        ),
    
         IconButton(
          icon: const Icon(Icons.add_circle_outline, size: 35,),
          tooltip: 'Nueva Reservacion',
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>NuevaReserScren(),));
          },
          
        ),

         
    
        
      ],
    );
  }
}
