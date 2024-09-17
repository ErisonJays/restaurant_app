import 'package:flutter/material.dart';

import '../estilos/estilos.dart';

String msgAlerta = "";
  showAlertDialog(BuildContext context) {
                          // set up the button
                          Widget okButton = TextButton(
                            child: Text("OK"),
                            onPressed: () {
                              //quitar la alerta
                               Navigator.of(context, rootNavigator: true)
                  .pop(); 
                            },
                          );

                          // set up the AlertDialog
                          AlertDialog alert = AlertDialog(
                            title: const Text("Alerta", style: textoStilos),
                            content:  Text("$msgAlerta", style: botonStilos,),
                             actions: [
                              okButton,
                            ],
                          );

                          // show the dialog
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return alert;
                            },
                          );
                        }