import 'package:flutter/material.dart';
import 'package:food2/category_box.dart';
import 'package:food2/popular_box.dart';
import 'package:food2/recommend_box.dart';
import 'package:food2/restaurants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFFFEFCFB),
      child: ListView(
        padding: EdgeInsets.only(top: 0),
        children: [
          Stack(
            children: [
              Positioned(
                child: Image.network(
                  'https://img.freepik.com/premium-vector/abstract-cures-pastel-color-stylish-templates-design-with-modern-shape-line-nude-pastel_293525-386.jpg',
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Discover\nRestaurants',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.search))
                  ],
                ),
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                SizedBox(height: 120),
                Container(
                    // margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    height: 250,
                    child: ListView(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        scrollDirection: Axis.horizontal,
                        children: restaurants
                            .take(3)
                            .map((index) => RecommendBox(index))
                            .toList()
                        // RecommendBox('steak_bg.jpeg', 'The Samoyed Steak House', 4, 56, 'Steak', 10, 15)

                        )),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 10,
                      width: 25,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    SizedBox(width: 5),
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    SizedBox(width: 5),
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  height: 120,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CategoryBox('Thai', 'thai_icon.png'),
                      CategoryBox('Chinese', 'chinese_icon.png'),
                      CategoryBox('American', 'american_icon.png'),
                      CategoryBox('French', 'french_icon.png'),
                      CategoryBox('Janpanese', 'japanese_icon.png'),
                      CategoryBox('Cafe', 'cafe_icon.png'),
                      CategoryBox('Breakfast', 'breakfast_icon.png')
                    ],
                  ),
                ),
                // Padding(padding: EdgeInsets.all(10)),
                SizedBox(height: 10),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Text(
                          'Popular',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.circle,
                          size: 10,
                          color: Colors.black26,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Positions',
                          style: TextStyle(color: Colors.black26, fontSize: 16),
                        )
                      ],
                    )),
                SizedBox(height: 10),
                Column(
                    children: restaurants
                        .getRange(3, restaurants.length)
                        .map((index) => PopularBox(index))
                        .toList())
              ]),
            ],
          )
        ],
      ),
    );
  }
}
