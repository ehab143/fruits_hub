import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../constants.dart';
import '../../../../../core/cubits/login_cubit/products_cubit.dart';
import '../../../../../core/widgets/custom_search_text_field.dart';
import 'products_grid_view.dart';
import 'products_grid_view_bloc_builder.dart';
import 'best_selling_header.dart';
import 'custom_home_appBar.dart';
import 'featured_list_view_item.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  void initState() {
    context.read<ProductsCubit>().getBestSellingProducts();

    super.initState();
  }

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
                SizedBox(height: 12),
                BestSellingHeader(),
                SizedBox(height: 8),
              ],
            ),
          ),

          ProductsGridViewBlocBuilder(),
        ],
      ),
    );
  }
}
