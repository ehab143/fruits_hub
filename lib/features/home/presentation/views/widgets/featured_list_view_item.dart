import 'package:flutter/material.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/featured_item.dart';

class FeaturedItemListView extends StatelessWidget {
  const FeaturedItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          5,
          (index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: FeaturedItem(),
          ),
        ),
      ),
    );
  }
}
