import 'package:flutter/material.dart';
//import 'package:pdf/pdf.dart';
//import 'package:pdf/widgets.dart' as pw;
//import 'package:printing/printing.dart';
import 'Screen/homescreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    
    
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}


