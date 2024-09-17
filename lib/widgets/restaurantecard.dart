import 'package:flutter/material.dart';

class RestauranteCardFeed extends StatelessWidget {
  const RestauranteCardFeed({
    super.key,
    required this.restaurante,
  });

  final String restaurante;

    @override
  Widget build(BuildContext context) {
    return Padding(
       padding: EdgeInsets.only(left: 2, right: 2, bottom: 2),
       child:  Text(
      restaurante,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      ),
    );
  }
}