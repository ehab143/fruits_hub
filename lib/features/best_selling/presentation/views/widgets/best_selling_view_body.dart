import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_style.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/products_grid_view.dart';

import '../../../../../core/widgets/best_selling_app_bar.dart';

class BestSellingViewBody extends StatelessWidget {
  const BestSellingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BestSellingAppBar(),
                SizedBox(height: 24),
                Text('الأكثر مبيعًا', style: TextStyles.bold16),
                SizedBox(height: 8),
              ],
            ),
          ),
          ProductsGridView(products: []),
        ],
      ),
    );
  }
}
