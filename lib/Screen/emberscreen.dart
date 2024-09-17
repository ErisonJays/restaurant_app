import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:restaurant_app/Screen/consultascreen.dart';
import 'package:restaurant_app/Screen/nuevaReserScreen.dart';

import '../data/data.dart';
import '../estilos/estilos.dart';
import '../widgets/alerta.dart';

class EmberScreen extends StatelessWidget {
  EmberScreen({
    super.key,
    // required this.tanda1,
    // required this.tanda2,
  });

  int tanda1 = ember["tanda1"];
  int tanda2 = ember["tanda2"];

  String nombre = "";
  int cantidad = 0;

  int contador = 0;
  int contador2 = 0;

  bool salirPantalla = false;

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Ember",
          style: tituloStilos,
        ),
        backgroundColor: Colors.amber,
        toolbarHeight: 90,
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

                      if (nombre.isEmpty){
                         msgAlerta = "Debe introducir su Nombre";
                     showAlertDialog(context);
                      }

                      else if (cantidad == 0){
                         msgAlerta = "Debe introducir la cantidad de personas";
                     showAlertDialog(context);
                      }


                     else if (tanda1 >= 1) {

                     

                        --tanda1;
                        ember["tanda1"] = tanda1;
                        ++contador;

                        ember.addAll({
                          "nombre$contador": "$nombre",
                          "cantidad": "$cantidad",
                          "Horario": "6 a 8pm"


                        });

                         msgAlerta = "Reservado exitosamente!!!";
                     showAlertDialog(context);

                                             
                                   //ir a pantalla anterior
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ConsultaScreen()));

                         msgAlerta = "Reservado exitosamente!!!";
                     showAlertDialog(context);

                      } 
                      else {
                      msgAlerta = "No hay Cupos disponible para este horario";
                     showAlertDialog(context);
                     
                      }
                    },

                    // condicional 2 --------------------------
                    child: const Text(
                      "Reservar 6 a 8pm",
                      style: botonStilos,
                    )),
                TextButton(
                    onPressed: () {
                         
                          if (nombre.isEmpty){
                         msgAlerta = "Debe introducir su Nombre";
                     showAlertDialog(context);
                      }

                      else if (cantidad == 0){
                         msgAlerta = "Debe introducir la cantidad de personas";
                     showAlertDialog(context);
                      }


                     else if (tanda2 >= 1) {
                      
                        --tanda2;
                        ember["tanda2"] = tanda2;
                        ++contador2;

                        ember.addAll({
                          "nombre$contador2": "$nombre",
                          "cantidad": "$cantidad",
                          "horario": "8 a 10pm"
                        });

                             //ir a pantalla anterior
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ConsultaScreen()));

                        msgAlerta = "Reservado exitosamente!!!";
                     showAlertDialog(context);

                      //  print(ember);

                      } 
                      else {
                      msgAlerta = "No hay Cupos disponible para este horario";
                     showAlertDialog(context);
                     
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
