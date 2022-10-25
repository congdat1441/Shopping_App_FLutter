import 'package:flutter/foundation.dart';
import 'package:flutter_application_2/Model/RatingModel.dart';

class ProductModel {
  int? id;
  double? price;
  String? description;
  String? title;
  String? category;
  String? image;
  int quantity;

  RatingModel? rating;
  ProductModel({
    this.id,
    this.price,
    this.title,
    this.description,
    this.category,
    this.image,
    this.rating,
    this.quantity = 0,
  });
  factory ProductModel.fromJson(Map<String, dynamic> obj, RatingModel rating) {
    return ProductModel(
        id: obj["id"],
        price: obj['price'].toDouble(),
        title: obj['title'],
        category: obj['category'],
        description: obj['description'],
        image: obj['image'],
        rating: rating);
  }

  factory ProductModel.fromItem(ProductModel item, int quantity) {
    return ProductModel(
      id: item.id,
      title: item.title,
      description: item.description,
      price: item.price,
      category: item.category,
      image: item.image,
      rating: item.rating,
      quantity: quantity,
    );
  }
}
