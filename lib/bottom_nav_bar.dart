import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  final int currentIndex;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        currentIndex: currentIndex,
        onTap: onTap,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: currentIndex == 0 ? '__' : ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), label: currentIndex == 1 ? '__' : ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: currentIndex == 2 ? '__' : ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: currentIndex == 3 ? '__' : "")
        ]);
  }
}
