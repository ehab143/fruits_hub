import 'package:fruits_hub/core/models/review_model.dart';

num getAvgRatting(List<ReviewModel> reviews) {
  var sum = 0.0;
  for (var review in reviews) {
    sum += review.ratting;
  }
  return sum / reviews.length;
}
