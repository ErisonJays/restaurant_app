import 'package:flutter/material.dart';
import 'package:restaurant_app/widgets/alerta.dart';

import '../Screen/consultascreen.dart';
import '../data/data.dart';

  validacion(String nombre, String restaurante, cantidad, int tanda, BuildContext context) {
  if (nombre.isEmpty) {

    msgAlerta = "Debe introducir su Nombre";
    showAlertDialog(context);

  } else if (cantidad == 0) {

    msgAlerta = "Debe introducir la cantidad de personas";
    showAlertDialog(context);

  } else if (tanda > 0) {

          
    
    // ++contador;

   

    // ListCard.addAll([
    //   {
    //     "nombre": nombre,
    //     "horario": "",
    //     "restaurante": restaurante,
    //     // "cantidad": "$cantidad",
    //   }
    // ]);

    //ir a pantalla deconsulta
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ConsultaScreen()));

    msgAlerta = "Reservado exitosamente!!!";
    showAlertDialog(context);

    return true;

  } else {
    msgAlerta = "No hay Cupos disponible para este horario";
    showAlertDialog(context);

    return false;

  
  }

  
}
