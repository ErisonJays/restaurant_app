import 'package:flutter/material.dart';

class NombreCardFeed extends StatelessWidget {
  const NombreCardFeed({
    super.key,
    required this.nombre,
  });

  final String nombre;

    @override
  Widget build(BuildContext context) {
    return Padding(
       padding: EdgeInsets.only(left: 2, right: 2, bottom: 2),
       child:  Text(
      nombre,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      ),
    );
  }
}