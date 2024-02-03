import 'package:flutter/material.dart';
import 'package:food2/bottom_recommend_box.dart';
import 'package:food2/order_screen.dart';
import 'package:food2/restaurant_model.dart';

class PopularBox extends StatelessWidget {
  final RestaurantModel restaurantModel;

  const PopularBox(this.restaurantModel, {super.key});

  @override
  Widget build(BuildContext context) {
    final RestaurantModel(
      :imagePath,
      :name,
      :numberOfStar,
      :description,
      :category,
      :distance,
      :price
    ) = restaurantModel;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/order' , arguments: restaurantModel);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        margin: EdgeInsets.symmetric(vertical: 5),
        child: Card(
            color: Colors.white,
            child: ListTile(
              leading: Container(
                width: 80,
                height: 80,
                child: Image.asset(
                  'assets/images/' + imagePath,
                  fit: BoxFit.cover,
                ),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Color.fromARGB(255, 255, 213, 0)),
                      SizedBox(width: 3),
                      Text(numberOfStar.toString(),
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 213, 0),
                              fontWeight: FontWeight.bold)),
                    ],
                  )
                ],
              ),
              subtitle: Column(children: [
                Text(
                  description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BottomRecommendBox(0, category),
                    BottomRecommendBox(1, '${distance}km'),
                    BottomRecommendBox(2, '${price}\$')
                  ],
                ),
              ]),
            )),
      ),
    );
  }
}
