import 'package:flutter/material.dart';

import 'package:restaurant_app/Screen/consultascreen.dart';
import 'package:restaurant_app/Screen/nuevaReserScreen.dart';
import 'package:restaurant_app/widgets/validacion.dart';

import '../data/data.dart';
import '../estilos/estilos.dart';
import '../widgets/alerta.dart';
import 'appbar/appbarreservar.dart';
import 'homescreen.dart';

class EmberScreen extends StatelessWidget {
  EmberScreen({
    super.key,
    required this.tanda1,
    required this.tanda2,
    required this.restaurante,
    //required this.empresa,
  });

  int tanda1;
  int tanda2;
  String restaurante;

  String nombre = "";
  int cantidad = 0;

  bool salirPantalla = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // eiminar botor por defecto de volver a pantalla
        title: const Text(
          "Realizar Reservaciones",
          style: tituloStilos,
        ),
        backgroundColor: Colors.amber,
        toolbarHeight: 90,
         actions: <Widget>[
        AppBarReservar(),
      ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const Text("Horarios disponibles:", style: TextStyle(fontSize: 30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("6 a 8 pm: ", style: textoStilos),
                Text("$tanda1", style: valorstilos),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("8 a 10 pm: ", style: textoStilos),
                Text("$tanda2", style: valorstilos),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  "Nombre:",
                  style: TextStyle(fontSize: 25),
                ),
                TextField(
                  style: TextStyle(fontSize: 25),
                  onChanged: (
                    texto,
                  ) {
                    nombre = texto;
                  },
                ),
                const Text("Cantidad de personas:",
                    style: TextStyle(fontSize: 25)),
                TextField(
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 25),
                  onChanged: (texto) {
                    cantidad = int.parse(texto);
                  },
                )
              ],
            ),
            Row(
              children: [
                TextButton(
                    onPressed: () {
                      //validacion de campos

                      //  print("RESTAURANTE$restaurante");
                      validacion(
                          nombre, restaurante, cantidad, tanda1, context);

                          String horario = "6 a 8pm";

                      if (validacion(
                          nombre, restaurante, cantidad, tanda1, context)) {
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
                      }

                      ListCard.addAll([
                        {
                          "nombre": nombre,
                          "horario": horario,
                          "restaurante": restaurante,
                          // "cantidad": "$cantidad",
                        },
                      ]);
                    },

                    // condicional 2 --------------------------
                    child: const Text(
                      "Reservar 6 a 8pm",
                      style: botonStilos,
                    )),
                TextButton(
                    onPressed: () {
                      //validacion de campos
                      validacion(
                          nombre, restaurante, cantidad, tanda2, context);

                      if (validacion(
                          nombre, restaurante, cantidad, tanda1, context)) {
                        String horario = "8 a 10pm";

                        if (restaurante == "Ember") {
                          ember["tanda2"] = ember["tanda2"] - 1;
                         //   print (ember["tanda1"]);
                        } else if (restaurante == "Zao") {
                          zao["tanda2"] = zao["tanda2"] - 1;
                          zao["horario"] = zao[horario];
                        } else if (restaurante == "Grappa") {
                          grappa["tanda2"] = grappa["tanda2"] - 1;
                          grappa["horario"] = grappa[horario];
                        } else if (restaurante == "Larimar") {
                          larimar["tanda2"] = larimar["tanda2"] - 1;
                          larimar["horario"] = larimar[horario];
                        }
                        
                      ListCard.addAll([
                        {
                          "nombre": nombre,
                          "horario": horario,
                          "restaurante": restaurante,
                          // "cantidad": "$cantidad",
                        }
                      ]);
                      }
                    },
                    child: const Text("Reservar 8 a 10pm", style: botonStilos)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

