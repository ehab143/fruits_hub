import 'dart:io';

import 'package:fruits_hub/core/entities/product_entity.dart';
import 'package:fruits_hub/core/models/review_model.dart';

import '../helper_functions/get_avg_ratting.dart';

class ProductModel {
  final String name;
  final String description;
  final num price;
  final String code;
  final num sellingCount;
  final bool isFeatured;
  String? imageUrl;
  final int expirationMonths;
  final int numberOfCalories;
  final int unitAmount;
  final num avgRating;
  final num ratingCount = 0;
  final bool isOrganic;
  final List<ReviewModel> reviews;

  ProductModel({
    required this.name,
    required this.sellingCount,
    required this.description,
    required this.price,
    required this.code,
    required this.isFeatured,
    required this.avgRating,
    this.imageUrl,
    required this.expirationMonths,
    required this.numberOfCalories,
    required this.unitAmount,
    required this.isOrganic,
    required this.reviews,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      avgRating: getAvgRatting(
        json['reviews'] != null
            ? List<ReviewModel>.from(
                json['reviews'].map((e) => ReviewModel.fromJson(e)),
              )
            : [],
      ),
      name: json['name'],
      imageUrl: json['imageUrl'], // 👈 السطر السحري اللي كان ناقص هنا!
      sellingCount: json['sellingCount'],
      description: json['description'],
      price: json['price'],
      code: json['code'],
      isFeatured: json['isFeatured'],
      expirationMonths: json['expirationMonths'],
      numberOfCalories: json['numberOfCalories'],
      unitAmount: json['unitAmount'],
      isOrganic: json['isOrganic'],
      reviews: json['reviews'] != null
          ? List<ReviewModel>.from(
              json['reviews'].map((e) => ReviewModel.fromJson(e)),
            )
          : [],
    );
  }
  ProductEntity toEntity() {
    return ProductEntity(
      name: name,
      description: description,
      price: price,
      code: code,
      isFeatured: isFeatured,
      imageUrl: imageUrl,
      expirationMonths: expirationMonths,
      numberOfCalories: numberOfCalories,
      unitAmount: unitAmount,
      isOrganic: isOrganic,
      reviews: reviews.map((e) => e.toEntity()).toList(),
    );
  }

  toJson() {
    return {
      'name': name,
      'code': code,
      'description': description,
      'price': price,
      'isFeatured': isFeatured,
      'imageUrl': imageUrl,
      'expirationMonths': expirationMonths,
      'isOrganic': isOrganic,
      'numberOfCalories': numberOfCalories,
      'unitAmount': unitAmount,
      'reviews': reviews.map((e) => e.toJson()).toList(),
    };
  }
}
