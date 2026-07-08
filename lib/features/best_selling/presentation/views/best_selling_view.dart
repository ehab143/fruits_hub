import 'package:flutter/material.dart';

import 'package:fruits_hub/features/best_selling/presentation/views/widgets/best_selling_view_body.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/custom_bottom_navigation_bar.dart';

class BestSellingView extends StatelessWidget {
  const BestSellingView({super.key});
  static const routeName = 'bestSellingView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BestSellingViewBody(),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
