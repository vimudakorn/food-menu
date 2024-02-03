import 'package:flutter/material.dart';

class CategoryBox extends StatelessWidget {
  final String category;
  final String iconPath;
  const CategoryBox(this.category, this.iconPath, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black26.withOpacity(0.3), // Shadow color
                spreadRadius: 2, // Spread radius
                blurRadius: 7, // Blur radius
                offset: Offset(0, 3), // Offset in x and y direction
              ),
            ],
          ),
          padding: EdgeInsets.all(10),
          child: ClipOval(
            child:
                Image.asset('assets/images/' + iconPath, fit: BoxFit.contain),
          ),
        ),
        Container(
            width: 100,
            child: Center(
                child: Text(
              '$category',
              style: TextStyle(fontWeight: FontWeight.bold),
            )))
      ],
    );
  }
}
