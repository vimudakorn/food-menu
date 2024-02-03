import 'package:flutter/material.dart';
import 'package:food2/bottom_nav_bar.dart';
import 'package:food2/history_screen.dart';
import 'package:food2/home_screen.dart';
import 'package:food2/order_screen.dart';
import 'package:food2/search_screen.dart';
import 'package:food2/settings_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        '/home': (context) => MyHomePage(title: ('Flutter Demo Home Page')),
        '/order': (context) => OrderScreen(),
        '/history': (context) => HistoryScreen()
      },
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      // home: OrderScreen()
      // home: HistoryScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  List pages = [HomeScreen() , SearchScreen() , HistoryScreen() , SettingsScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(
        currentIndex: currentIndex,
        onTap: (value) => setState(() {
          currentIndex = value;
        }),
      ),
      body: pages[currentIndex]
    );
  }
}

List<Widget> generateStarsWithText(
    int allOfStars, double numberOfStart, int numberOfComment,
    {bool needText = true}) {
  List<Widget> stars = List.generate(
    allOfStars - 1,
    (index) => Icon(
      Icons.star,
      color: index < numberOfStart.toInt()
          ? Color.fromARGB(255, 255, 213, 0)
          : Colors.black26,
    ),
  );

  // Add the last star with text
  stars.add(
    Row(
      children: [
        Icon(
          Icons.star,
          color: 5 < numberOfStart.toInt()
              ? Color.fromARGB(255, 255, 213, 0)
              : Colors.black26,
        ),
        SizedBox(width: 4), // Adjust spacing between star and text
        Text(
          '$numberOfStart',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 255, 213, 0),
              fontSize: 16),
        ),
        SizedBox(width: 4),
        if (needText) Text('(${numberOfComment})')
      ],
    ),
  );

  return stars;
}
