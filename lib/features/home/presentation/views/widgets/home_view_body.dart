import 'package:flutter/material.dart';
import 'package:fruits_hub/constants.dart';
import 'package:fruits_hub/core/widgets/custom_search_text_field.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/custom_home_appBar.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/featured_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: kTopPadding),
                CustomHomeAppbar(),
                SizedBox(height: 16),
                CustomSearchTextField(),
                SizedBox(height: 12),
                FeaturedItemListView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
