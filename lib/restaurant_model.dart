import 'package:flutter/material.dart';

class RestaurantModel {
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
  final String description;
  final List<RecomendedDishModel> recommendLists;
  final List<CommentModel> commentLists;


  RestaurantModel(this.imagePath, this.numberOfStar, this.numberOfComment, this.category, this.distance, this.price, this.openCloseTime, this.typeOrder, this.location, this.recommendLists, this.commentLists, this.description, {required this.name});
}

class RecomendedDishModel {
  final String imagePath;
  final String name;
  final double price;

  RecomendedDishModel({required this.imagePath, required this.name, required this.price});
  
}

class CommentModel {
  final String imagePath;
  final String username;
  final String date;
  final int star;
  final String comment;

  CommentModel({required this.imagePath, required this.username, required this.date, required this.star, required this.comment});
}

class OrderHistoryModel {
  final String name;
  final String imagePath;
  final int order;
  final String category;
  final double price;

  OrderHistoryModel({required this.name, required this.imagePath, required this.order, required this.category, required this.price});
  
}