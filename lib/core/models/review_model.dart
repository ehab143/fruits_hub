import 'package:fruits_hub/core/entities/review_entity.dart';

class ReviewModel {
  final String name;
  final String reviewDescription;
  final String date;
  final String image;
  final num ratting;

  ReviewModel({
    required this.name,
    required this.reviewDescription,
    required this.date,
    required this.image,
    required this.ratting,
  });

  factory ReviewModel.fromEntity(ReviewEntity reviewEntity) {
    return ReviewModel(
      name: reviewEntity.name,
      reviewDescription: reviewEntity.reviewDescription,
      date: reviewEntity.date,
      image: reviewEntity.image,
      ratting: reviewEntity.ratting,
    );
  }

  factory ReviewModel.fromJson(Map<String, dynamic> json) {
    return ReviewModel(
      name: json['name'],
      reviewDescription: json['reviewDescription'],
      date: json['date'],
      image: json['image'],
      ratting: json['ratting'],
    );
  }

  ReviewEntity toEntity() {
    return ReviewEntity(
      name: name,
      reviewDescription: reviewDescription,
      date: date,
      image: image,
      ratting: ratting,
    );
  }

  toJson() {
    return {
      'name': name,
      'reviewDescription': reviewDescription,
      'date': date,
      'image': image,
      'ratting': ratting,
    };
  }
}
