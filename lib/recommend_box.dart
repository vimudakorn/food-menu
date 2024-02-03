import 'package:flutter/material.dart';
import 'package:food2/bottom_recommend_box.dart';
import 'package:food2/main.dart';
import 'package:food2/restaurant_model.dart';

class RecommendBox extends StatelessWidget {
  final RestaurantModel restaurantModel;

  const RecommendBox(this.restaurantModel, {super.key});

  @override
  Widget build(BuildContext context) {
    final RestaurantModel(
      :imagePath,
      :name,
      :numberOfComment,
      :numberOfStar,
      :category,
      :distance,
      :price
    ) = restaurantModel;

    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/order', arguments: restaurantModel);
          },
          child: Container(
            width: 350,
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 254, 243, 227),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    'assets/images/' + imagePath,
                    width: 350,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          left: 20,
          right: 20,
          child: Card(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text(
                      '$name',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    subtitle: Column(children: [
                      Row(
                        children: generateStarsWithText(5, numberOfStar,
                            numberOfComment), // Change 5 to the desired number of stars
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BottomRecommendBox(0, category),
                          BottomRecommendBox(1, '${distance}km'),
                          BottomRecommendBox(2, '$price\$'),
                        ],
                      )
                    ]),
                  )
                ],
              )),
        ),
      ],
    );
  }
}
