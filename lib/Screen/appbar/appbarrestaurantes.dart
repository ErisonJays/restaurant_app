import 'package:flutter/material.dart';

import '../consultascreen.dart';
import '../homescreen.dart';


class AppBarRestaurantes extends StatelessWidget {
  const AppBarRestaurantes({
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
