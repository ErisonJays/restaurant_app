import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../data/data.dart';
import '../estilos/estilos.dart';

class EmberScreen extends StatefulWidget {
  EmberScreen({
    super.key,
    required this.tanda1,
    required this.tanda2,
  });

  
  int tanda1;
  int tanda2;


  
  

  @override
  State<EmberScreen> createState() => _EmberScreenState();
}

class _EmberScreenState extends State<EmberScreen> {
  
  String nombre = "";
  int cantidad = 0;
  bool _stateReservar = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Ember", style: tituloStilos,),
        backgroundColor: Colors.amber,
        toolbarHeight: 90,
        
        
      ),


      body: 
      Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
           const Text("Horarios disponibles:", style: TextStyle(fontSize: 30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("6 a 8 pm: ", style: textoStilos),
                Text("${widget.tanda1}", style: valorstilos),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               const Text("8 a 10 pm: ", style: textoStilos),
                Text("${widget.tanda2}", style: valorstilos,)
              ],
            ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
              children: [
                
               Text("Nombre:",style: TextStyle(fontSize: 25),),
               TextField(
                style:TextStyle(fontSize:25),
                onChanged: (texto,){
                nombre = texto;
               },),
                const Text("Cantidad de personas:",style: TextStyle(fontSize: 25)),
                TextField(
                  
                  keyboardType: TextInputType.number,
                  style:TextStyle(fontSize:25),
                  onChanged:  (texto){
                  cantidad = int.parse(texto);
                },)

                
              ],
            ),
             Row(
              children: [
               TextButton(onPressed: (){
                // setState(() {
                //   _stateReservar = true;
                // });
             // _stateReservar ?  --embertanda1 : embertanda1 = embertanda1; 
             --ember["tanda1"];
             emberRegistro["nombre"] = nombre;

               }, child: const Text("Reservar 6 a 8pm", style: botonStilos ,)),
               TextButton(onPressed: (){}, child: const Text("Reservar 8 a 10pm", style: botonStilos )),
              ],
            ),
          ],
        ),
      ),
      
      
       
      
    );
  }
}
