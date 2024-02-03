import 'package:flutter/material.dart';
import 'package:food2/bottom_recommend_box.dart';
import 'package:food2/main.dart';
import 'package:food2/restaurant_model.dart';

class FoodDetainWidget extends StatefulWidget {
  const FoodDetainWidget({super.key, required this.imagePath, required this.name, required this.numberOfStar, required this.numberOfComment, required this.category, required this.distance, required this.price, required this.openCloseTime, required this.typeOrder, required this.location});
  final String imagePath;
  final String name;
  final double numberOfStar;
  final int numberOfComment;
  final String category;
  final double distance;
  final double price;
  final String openCloseTime;
  final String typeOrder;
  final String location;

  @override
  State<FoodDetainWidget> createState() => _FoodDetainWidgetState();
}

class _FoodDetainWidgetState extends State<FoodDetainWidget> {
  @override
  Widget build(BuildContext context) {
    // return Container(
    //   width: 350,
    //   height: 250,
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(10),
    //     color: Color.fromARGB(255, 255, 251, 245),
    //   ),
    // );
    // return Card(
    //           color: Colors.white,
    //           child: Container(
    //             // padding: EdgeInsets.all(5),
    //             width: 380,
    //             height: 200,
    //             child: Column(
    //               mainAxisAlignment: MainAxisAlignment.center,
    //             children: <Widget>[
    //               ListTile(
    //                 // leading: Icon(Icons.food_bank_outlined),
    //                 title: Text('The Smoothing Dessert', style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20),),
    //                 subtitle: Column(
    //                   children: [
    //                     SizedBox(height: 5),
    //                     Row(
    //                       children: generateStarsWithText(5,3.4, 10), // Change 5 to the desired number of stars
    //                     ),
    //                     SizedBox(height: 5),
    //                     Row(
    //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                       children: [
    //                         ButtonRecommendBox(0, 'Dessert'),
    //                         ButtonRecommendBox(1, '${3.4}km'),
    //                         ButtonRecommendBox(2, '43\$'),

    //                       ],
    //                     ),
    //                     SizedBox(height: 5),
    //                     Divider(
    //                       thickness: 1.5, // You can customize the thickness of the line
    //                       color: const Color.fromARGB(255, 197, 197, 197), // You can customize the color of the line
    //                       indent: 10, // Left padding
    //                       endIndent: 10, // Right padding
    //                     ),
    //                     SizedBox(height: 5),
    //                     Row(
    //                       children: [
    //                         ButtonRecommendBox(0, '08.00-14.00'),
    //                         SizedBox(width: 40),
    //                         ButtonRecommendBox(1, 'Packing lot'),
    //                       ],
    //                     ),
    //                     ButtonRecommendBox(2, '18 west 29th street')
    //                 ]),
    //               )
    //             ],
    //                         ),
    //           ));

    return SizedBox(
      height: 410,
      child: Stack(
        children: [
          Positioned(
              top: 0,
              child: Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'assets/images/' + widget.imagePath,
                  fit: BoxFit.cover,
                ),
              )),
              
          Positioned(
            top: 50,
            left: 15,
            child: IconButton(
                color: Colors.black,
                style: ButtonStyle(
                  // backgroundColor: MaterialStateProperty.all(Color.fromARGB(200, 27, 27, 27))),
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.black,
                )),
          ),
          Positioned(
            top: 50,
            right: 15,
            child: IconButton(
                color: Colors.black,
                style: ButtonStyle(
                  // backgroundColor: MaterialStateProperty.all(Color.fromARGB(200, 27, 27, 27))),
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                ),
                onPressed: () {},
                icon: Icon(
                  Icons.report_gmailerrorred_outlined,
                  color: Colors.black,
                )),
          ),
          Positioned(
            top: 200,
            left: 20,
            right: 20,
            child: Card(
                color: Colors.white,
                child: SizedBox(
                  // padding: EdgeInsets.all(5),
                  width: 380,
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ListTile(
                        // leading: Icon(Icons.food_bank_outlined),
                        title: Text(
                          widget.name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        subtitle: Column(children: [
                          SizedBox(height: 5),
                          Row(
                            children: generateStarsWithText(5, widget.numberOfStar, widget.numberOfComment), // Change 5 to the desired number of stars
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BottomRecommendBox(0, widget.category),
                              BottomRecommendBox(1, '${widget.distance}km'),
                              BottomRecommendBox(2, '${widget.price}\$'),
                            ],
                          ),
                          SizedBox(height: 5),
                          Divider(
                            thickness:
                                1.5, // You can customize the thickness of the line
                            color: const Color.fromARGB(255, 197, 197,
                                197), // You can customize the color of the line
                            indent: 10, // Left padding
                            endIndent: 10, // Right padding
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              BottomRecommendBox(3, widget.openCloseTime),
                              SizedBox(width: 40),
                              BottomRecommendBox(4, widget.typeOrder),
                            ],
                          ),
                          SizedBox(height: 5),
                          BottomRecommendBox(5, widget.location)
                        ]),
                      )
                    ],
                  ),
                )),
          )
        ],
      ),
    );
  }
}
