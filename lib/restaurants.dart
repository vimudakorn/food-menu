import 'package:flutter/foundation.dart';
import 'package:food2/restaurant_model.dart';


final List<RestaurantModel> restaurants = [
    RestaurantModel(
        'recommend_bg.jpeg',
        3.4,
        232,
        'Dessert',
        3.4,
        7.5,
        '08.00-14.00',
        'Pick Up/Take Home',
        '18 west 29th street',
        [
          RecomendedDishModel(
              imagePath: 'dessert1.jpeg', name: 'Caneles', price: 5.5),
          RecomendedDishModel(
              imagePath: 'dessert2.jpeg', name: 'Macarons', price: 3.99),
          RecomendedDishModel(
              imagePath: 'dessert3.jpeg', name: 'Crème Brûlée', price: 7),
          RecomendedDishModel(
              imagePath: 'dessert4.jpeg',
              name: 'Raspberry Clafoutis',
              price: 10.99)
        ],
        [
          CommentModel(
              imagePath: 'person1.jpeg',
              username: 'David',
              date: 'June 26',
              star: 4,
              comment: 'This is the most delicious restaurant'),
          CommentModel(
              imagePath: 'person2.jpeg',
              username: 'Thomas',
              date: 'May 18',
              star: 3,
              comment: 'Soso not good , not bad'),
          CommentModel(
              imagePath: 'person3.jpeg',
              username: 'Alex',
              date: '2 years ago',
              star: 5,
              comment: 'Reallyyyyy Delicious!!!')
        ],
        'My restaurant sell a lot of delicious dessert for you',
        name: 'The Smoothing Dessert'),
    RestaurantModel(
        'japanese_bg.jpeg',
        4.4,
        1023,
        'Japanese',
        10.3,
        23,
        '10.00-22.00',
        'Pick Up',
        '26 east 23th street',
        [
          RecomendedDishModel(
              imagePath: 'japan1.jpeg', name: 'Salmon sashimi', price: 10.99),
          RecomendedDishModel(
              imagePath: 'japan2.png', name: 'Uni Bara Don', price: 29.99),
          RecomendedDishModel(
              imagePath: 'japan3.jpeg', name: 'Unagi Don', price: 24.99)
        ],
        [
          CommentModel(
              imagePath: 'person4.jpeg',
              username: 'Jade',
              date: 'Jan 23',
              star: 4,
              comment: 'very fresh'),
          CommentModel(
              imagePath: 'person5.jpeg',
              username: 'Amilia',
              date: '1 year ago',
              star: 5,
              comment: 'suiable with price'),
          CommentModel(
              imagePath: 'person6.jpeg',
              username: 'Jasmin',
              date: '2 years ago',
              star: 4,
              comment: 'pretty good')
        ],
        'Let\'s me cook fresh and elegant japanese food',
        name: 'Sushi na kin'),
    RestaurantModel(
        'padthai.jpeg',
        3.2,
        23,
        'Thai',
        1.2,
        10,
        '7.00-18.00',
        'Pick up/Take home',
        '299 east south 1st street',
        [
          RecomendedDishModel(
              imagePath: 'thai1.jpeg', name: 'Padthai Koong', price: 3),
          RecomendedDishModel(
              imagePath: 'thai2.jpeg', name: 'Labster Padthai', price: 35.99),
          RecomendedDishModel(
              imagePath: 'thai3.jpeg', name: 'Standard Padthai', price: 2.9)
        ],
        [
          CommentModel(
              imagePath: 'person4.jpeg',
              username: 'Jade',
              date: 'Jan 23',
              star: 4,
              comment: 'very fresh'),
          CommentModel(
              imagePath: 'person1.jpeg',
              username: 'David',
              date: 'June 26',
              star: 4,
              comment: 'This is the most delicious restaurant'),
          CommentModel(
              imagePath: 'person2.jpeg',
              username: 'Thomas',
              date: 'May 18',
              star: 3,
              comment: 'Soso not good , not bad')
        ],
        'Delicious Pad Thai awaits! Perfectly balanced and utterly satisfying. Indulge today!',
        name: 'Padthai Kung Kung Kung'),
    RestaurantModel(
        'icream.jpeg',
        4.3,
        345,
        'Dessert',
        24.2,
        8.5,
        '11.00-22.00',
        'Pick up/Take home',
        '54 north 34th street',
        [RecomendedDishModel(imagePath: 'icream1.jpeg', name: 'Ice Cream Sundae', price: 6.5),
        RecomendedDishModel(imagePath: 'icream2.jpeg', name: 'Blue Moon Ice Cream', price: 4.9),
        RecomendedDishModel(imagePath: 'icream3.jpeg', name: 'Strawberry Ice Cream', price: 5.55)
        ],
        [
          CommentModel(
              imagePath: 'person1.jpeg',
              username: 'David',
              date: 'June 26',
              star: 4,
              comment: 'This is the most delicious restaurant'),
          CommentModel(
              imagePath: 'person5.jpeg',
              username: 'Amilia',
              date: '1 year ago',
              star: 5,
              comment: 'suiable with price'),
          CommentModel(
              imagePath: 'person6.jpeg',
              username: 'Jasmin',
              date: '2 years ago',
              star: 4,
              comment: 'pretty good')
        ],
        'Scoop into happiness at Itako! Indulge in creamy delights that melt away stress. Every bite is a sweet escape',
        name: 'Itako'),
    RestaurantModel(
        'chocolate.jpeg',
        3.5,
        23,
        'Dessert',
        14.4,
        4,
        '08.00-15.00',
        'Take home',
        '34 south 343th street',
        [
          RecomendedDishModel(imagePath: 'choco1.jpeg', name: 'Strawberry Chocolate', price: 6),
          RecomendedDishModel(imagePath: 'choco2.jpeg', name: 'Cutie Chocolate', price: 2.99),
          RecomendedDishModel(imagePath: 'choco3.jpeg', name: 'Chocolate Cake', price: 4.5)
        ],
        [
          CommentModel(
              imagePath: 'person2.jpeg',
              username: 'Thomas',
              date: 'May 18',
              star: 3,
              comment: 'Soso not good , not bad'),
          CommentModel(
              imagePath: 'person3.jpeg',
              username: 'Alex',
              date: '2 years ago',
              star: 5,
              comment: 'Reallyyyyy Delicious!!!'),
          CommentModel(
              imagePath: 'person5.jpeg',
              username: 'Amilia',
              date: '1 year ago',
              star: 5,
              comment: 'suiable with price')
        ],
        'Satisfy your cravings at Wongo—a haven of irresistible, handcrafted chocolates. Elevate your indulgence with us today!"',
        name: 'Wongo Chocolateto'),
    RestaurantModel(
        'ramen.jpeg',
        3.9,
        321,
        'Japanese',
        34.5,
        6.5,
        '10.00-21.00',
        'Pick up/Take home',
        '223 east south 9th street',
        [
          RecomendedDishModel(imagePath: 'ramen1.jpeg', name: 'Taishoken Ramen', price: 6.75),
          RecomendedDishModel(imagePath: 'ramen2.jpeg', name: 'Shoyu Ramen', price: 5.55),
          RecomendedDishModel(imagePath: 'ramen3.jpeg', name: 'Pork Belly Ramen', price: 5.55)
        ],
        [
          CommentModel(
              imagePath: 'person4.jpeg',
              username: 'Jade',
              date: 'Jan 23',
              star: 4,
              comment: 'very fresh'),
          CommentModel(
              imagePath: 'person5.jpeg',
              username: 'Amilia',
              date: '1 year ago',
              star: 5,
              comment: 'suiable with price'),
          CommentModel(
              imagePath: 'person6.jpeg',
              username: 'Jasmin',
              date: '2 years ago',
              star: 4,
              comment: 'pretty good')
        ],
        'Discover noodle nirvana at Kin Ramen. Savor the perfect blend of flavors and textures in every bowl. Dive into a delicious experience today!',
        name: 'Kin Ramen'),
    RestaurantModel(
        'somtam.jpeg',
        4.7,
        56,
        'Thai',
        0.8,
        3.5,
        '11.00-24.00',
        'Pick up/Take home',
        '56 east 69th street',
        [
          RecomendedDishModel(imagePath: 'somtam1.jpeg', name: 'Somtam', price: 3.5),
          RecomendedDishModel(imagePath: 'somtam2.jpeg', name: 'Leng Tom Zab', price: 7.99),
          RecomendedDishModel(imagePath: 'somtam3.jpeg', name: 'Nam Tok', price: 4)
        ],
        [
          CommentModel(
              imagePath: 'person4.jpeg',
              username: 'Jade',
              date: 'Jan 23',
              star: 4,
              comment: 'very fresh'),
          CommentModel(
              imagePath: 'person1.jpeg',
              username: 'David',
              date: 'June 26',
              star: 4,
              comment: 'This is the most delicious restaurant'),
          CommentModel(
              imagePath: 'person2.jpeg',
              username: 'Thomas',
              date: 'May 18',
              star: 3,
              comment: 'Soso not good , not bad')
        ],
        'Savor the bold flavors of Thailand with our Som Tam at Somtam Zab. A perfect blend of sweet, sour, and spicy in every bite. Dive into freshness today!',
        name: 'Somtam Zab')
    //           PopularBox(imagePath: 'somtam.jpeg', name: 'Somtam Zab', rating: 4.7, description: 'Savor the bold flavors of Thailand with our Som Tam at Somtam Zab. A perfect blend of sweet, sour, and spicy in every bite. Dive into freshness today!', category: 'Thai', distance: 1.2, cost: 4),])
  ];

final List<OrderHistoryModel> orderHistoryModel = [
  OrderHistoryModel(name: 'The Smoothing Dessert', imagePath: 'recommend_bg.jpeg', order: 4, category: 'Dessert', price: 43.5),
  OrderHistoryModel(name: 'Somtam Zab', imagePath: 'somtam.jpeg', order: 3, category: 'Thai', price: 10.45),
  OrderHistoryModel(name: 'Itako', imagePath: 'icream.jpeg', order: 1, category: 'Dessert', price: 5.55),
  OrderHistoryModel(name: 'Wongo Chocolateto', imagePath: 'chocolate.jpeg', order: 3, category: 'Dessert', price: 20),
  OrderHistoryModel(name: 'Shushi na Kin', imagePath: 'japanese_bg.jpeg', order: 3, category: 'Japanese', price: 17.75),
  OrderHistoryModel(name: 'Padthai Kung Kung Kung', imagePath: 'padthai.jpeg', order: 1, category: 'Thai', price: 3.5),
  OrderHistoryModel(name: 'The Smoothing Dessert', imagePath: 'recommend_bg.jpeg', order: 1, category: 'Dessert', price: 9.99),
  OrderHistoryModel(name: 'Wongo Chocolateto', imagePath: 'chocolate.jpeg', order: 2, category: 'Dessert', price: 13.5),
  OrderHistoryModel(name: 'Kin Ramen', imagePath: 'ramen.jpeg', order: 1, category: 'Japanese', price: 5.55),
  OrderHistoryModel(name: 'Somtam Zab', imagePath: 'somtam.jpeg', order: 2, category: 'Thai', price: 6.45),



  
];