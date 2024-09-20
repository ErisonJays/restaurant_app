import "dart:typed_data";

import "package:flutter/material.dart";
import "package:restaurant_app/data/data.dart";
import "package:restaurant_app/estilos/estilos.dart";
import "package:restaurant_app/widgets/listcardfeed.dart";
import "../widgets/botonesprincipal.dart";
import "appbar/appbarconsulta.dart";
import "homescreen.dart";
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class ConsultaScreen extends StatelessWidget {
  ConsultaScreen({
    super.key,
  });

//String restaurante = ember["restaurante"];
  int cantidadRegistro = ember.length;

  @override
  Widget build(BuildContext context) {
    //String nombre = emberRegistro["nombre"];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Column(
          children: [
            Text(
              "Consulta",
              style: tituloStilos,
            ),
            Text("Lista de reservaciones", style: parrafoStilos),
          ],
        ),
        backgroundColor: Colors.amber,
        toolbarHeight: 90,
        actions: const <Widget>[
          AppBarConsulta(),
          IconButton(
            icon: Icon(
              Icons.print,
              size: 35,
            ),
            tooltip: 'Imprimir',
            onPressed: _createPdf,
          ),
        ],
      ),
      body: ListCardFeed(),
    );
  }
}

/// create PDF & print it
void _createPdf() async {
  final doc = pw.Document();

  /// for using an image from assets
  // final image = await imageFromAssetBundle('assets/image.png');

  doc.addPage(
    pw.Page(
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context) {
        return pw.Center(
          child: pw.Text("Nombre: $ListCard['Nombre']/n"
              "Restaurante: $ListCard['restaurante']/n"
              " Horario$ListCard['horario']"),
        ); // Center
      },
    ),
  ); // Page

  /// print the document using the iOS or Android print service:
  await Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async => doc.save());
}
