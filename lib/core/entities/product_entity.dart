import 'dart:io';

import 'package:fruits_hub/core/entities/review_entity.dart';

class ProductEntity {
  final String name;
  final String description;
  final num price;
  final String code;

  final bool isFeatured;
  String? imageUrl;
  final int expirationMonths;
  final int numberOfCalories;
  final int unitAmount;
  final num avgRating = 0;
  final num ratingCount = 0;
  final bool isOrganic;
  final List<ReviewEntity> reviews;

  ProductEntity({
    required this.name,
    required this.description,
    required this.price,
    required this.code,

    required this.isFeatured,
    this.imageUrl,
    required this.expirationMonths,
    required this.numberOfCalories,
    required this.unitAmount,
    this.isOrganic = false,
    required this.reviews,
  });
}
