import 'package:flutter/material.dart';

class BottomRecommendBox extends StatelessWidget {
  final int index;
  final String info;
  BottomRecommendBox(this.index, this.info);

  List icons = [
    Icons.local_dining_sharp,
    Icons.social_distance_rounded,
    Icons.price_check_outlined,
    Icons.timer_rounded,
    Icons.shopping_bag,
    Icons.pin_drop
  ];

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(icons[index], color: Colors.black26),
      SizedBox(width: 3),
      Text(
        '$info',
        style: TextStyle(fontSize: 13, color: Colors.black26),
      )
    ]);
  }
}
