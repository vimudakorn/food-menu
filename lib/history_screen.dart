import 'package:flutter/material.dart';
import 'package:food2/restaurant_model.dart';
import 'package:food2/restaurants.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  int currentIndex = 0;

  void handleOnTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }
  
  

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFFFEFCFB),
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Order history',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            bottom: TabBar(
              onTap: handleOnTap,
              tabs: [
                Tab(
                  child: Text('Active'),
                ),
                Tab(
                  child: Text('Complete'),
                ),
                Tab(
                  child: Text('Cancelled'),
                )
              ],
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: TabBarView(
              children: [
                ListView(
                  children: orderHistoryModel.getRange(0, 2).map((e) => OrderHistoryWidget(textInButton: 'Track Order', orderHistoryModel: e)).toList()
                ), 
                ListView(
                  children: orderHistoryModel.getRange(2, orderHistoryModel.length-2).map((e) => OrderHistoryWidget(textInButton: 'Leave Review', orderHistoryModel: e)).toList()
                  
                ),
                ListView(
                  children: orderHistoryModel.getRange(orderHistoryModel.length-2, orderHistoryModel.length).map((e) => OrderHistoryWidget(textInButton: 'Re-Order', orderHistoryModel: e)).toList()
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OrderHistoryWidget extends StatefulWidget {
  const OrderHistoryWidget({super.key, required this.textInButton, required this.orderHistoryModel});

  final String textInButton;
  final OrderHistoryModel orderHistoryModel;

  @override
  State<OrderHistoryWidget> createState() => _OrderHistoryWidgetState();
}

class _OrderHistoryWidgetState extends State<OrderHistoryWidget> {
  @override
  Widget build(BuildContext context) {
    final OrderHistoryModel(:imagePath,:name,:order,:price,:category) = widget.orderHistoryModel;
    return Container(
      clipBehavior: Clip.hardEdge,
      margin: EdgeInsets.all(5),
      width: double.maxFinite,
      height: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.brown.shade50,
      ),
      child: Row(children: [
        Image.asset(
          'assets/images/${imagePath}',
          width: 120,
          height: 110,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            Text(
              'Order : $order | $category',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 5),
            SizedBox(
              width: 260,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$ $price',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Container(
                    height: 35,
                    // width: 135,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all(Colors.white),
                            backgroundColor: MaterialStateProperty.all(
                                Colors.brown.shade200)),
                        onPressed: () {},
                        child: 
                        Text(widget.textInButton, style: TextStyle(fontWeight: FontWeight.bold),)),
                  )
                ],
              ),
            )
          ]),
        )
      ]),
    );
  }
}
