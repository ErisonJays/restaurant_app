import 'package:flutter/material.dart';
import 'package:restaurant_app/widgets/alerta.dart';

import '../Screen/consultascreen.dart';
import '../data/data.dart';

validacion(String nombre, String restaurante, cantidad, int tanda,
    BuildContext context, int button) {
  if (nombre.isEmpty) {
    msgAlerta = "Debe introducir su Nombre";
    showAlertDialog(context);
  } else if (cantidad == 0) {
    msgAlerta = "Debe introducir la cantidad de personas";
    showAlertDialog(context);
  } else if (tanda > 0) {



    if (restaurante == "Ember") {
      ember["tanda1"] = ember["tanda1"] - 1;
      //  print (ember["tanda1"]);
    } else if (restaurante == "Zao") {
      zao["tanda1"] = zao["tanda1"] - 1;
    } else if (restaurante == "Grappa") {
      grappa["tanda1"] = grappa["tanda1"] - 1;
    } else if (restaurante == "Larimar") {
      larimar["tanda1"] = larimar["tanda1"] - 1;
    }
    // ember["tanda1"] = ember["tanda1"] - 1;

//validar cual boton de horario se selecciono
 switch (button){
  case 1: 
  ListCard.addAll([
      {
        "nombre": nombre,
        "horario": "6 a 8pm",
        "restaurante": restaurante,
        // "cantidad": "$cantidad",
      },
    ]);
   case 2:
    ListCard.addAll([
      {
        "nombre": nombre,
        "horario": "8 a 10pm",
        "restaurante": restaurante,
        // "cantidad": "$cantidad",
      },
    ]);

 }

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
