import 'package:flutter/material.dart';
import 'package:food2/food_detail_widget.dart';
import 'package:food2/main.dart';
import 'package:food2/restaurant_model.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    final model  = ModalRoute.of(context)!.settings.arguments as RestaurantModel;
    final RestaurantModel(:imagePath,:name,:numberOfStar,:numberOfComment,:category,:distance,:price,:openCloseTime,:typeOrder,:location,:recommendLists,:commentLists) = model;

    return Scaffold(
        body: ListView(
      padding: EdgeInsets.only(top: 0),
      children: [
        FoodDetainWidget(imagePath: imagePath, name: name, numberOfStar: numberOfStar, numberOfComment: numberOfComment, category: category, distance: distance, price: price, openCloseTime: openCloseTime, typeOrder: typeOrder, location: location),
        Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Recomended dished',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: recommendLists.map((e) => RecommendMenuWidget(imagePath: e.imagePath, name: e.name, price: e.price)).toList()
                    
                  
                ),
              ),
              Text(
                'The comments',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              Column(
                children: commentLists.map((e) => CommentWidget(username: e.username, numberOfStar: e.star, date: e.date, imagePath: e.imagePath, comment: e.comment)).toList(),
              )
            ],
          ),
        )
      ],
    ));
  }
}

class RecommendMenuWidget extends StatefulWidget {
  const RecommendMenuWidget({super.key, required this.imagePath, required this.name, required this.price});
  final String imagePath;
  final String name;
  final double price;

  @override
  State<RecommendMenuWidget> createState() => _RecommendMenuWidgetState();
}

class _RecommendMenuWidgetState extends State<RecommendMenuWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFFFFEFCFB),
      ),
      width: 200,
      // height: 250,
      margin: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
              width: 200,
              height: 120,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white
              ),
              child: Image.asset('assets/images/${widget.imagePath}',
                  fit: BoxFit.cover)),
          Container(
            // color: Colors.pink,
            child: Padding(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  Text(
                    '\$ ${widget.price}',
                    textAlign: TextAlign.start,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      // title: Text('testttt'),
    );
  }
}

class CommentWidget extends StatefulWidget {
  const CommentWidget({super.key, required this.username, required this.numberOfStar, required this.date, required this.imagePath, required this.comment});
  final String username;
  final int numberOfStar;
  final String date;
  final String imagePath;
  final String comment;

  @override
  State<CommentWidget> createState() => _CommentWidgetState();
}

class _CommentWidgetState extends State<CommentWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.2,
      margin: EdgeInsets.all(5),
      // width: double.maxFinite,
      // height: MediaQuery.of(context).size.height,
      // padding: EdgeInsets.all(10),
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(10),
      //   color: Colors.black12,
      // ),
      // width: double.maxFinite,
      // color:Colors.pink,
      child: ListTile(
          leading: ClipOval(
                  child: Image.asset('assets/images/${widget.imagePath}' ,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                  )
                
          ),
          title: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      child: Row(
                    children: [
                      Text(
                        widget.username,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      )
                    ],
                  )),
                  Text(widget.date)
                ],
              ),
              Row(
                children: generateStarsWithText(5, widget.numberOfStar.toDouble(), 0 , needText: false)
              ),
              Divider(
                thickness: 1.0,
                // indent: 10,
                // endIndent: 10,
              )
            ],
          ),
          subtitle: Text(widget.comment),
          
      ));
  }
}
