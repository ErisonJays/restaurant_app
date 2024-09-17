import 'package:flutter/material.dart';

class HorarioCardFeed extends StatelessWidget {
  const HorarioCardFeed({
    super.key,
    required this.horario,
  });

  final String horario;

    @override
  Widget build(BuildContext context) {
    return Padding(
       padding: EdgeInsets.only(left: 2, right: 2, bottom: 2),
       child:  Text(
      horario,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      ),
    );
  }
}