import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/cubits/login_cubit/products_cubit.dart';
import 'package:fruits_hub/core/cubits/login_cubit/products_states.dart';
import 'package:fruits_hub/core/helper_functions/get_dummy_products.dart';
import 'package:fruits_hub/core/widgets/custom_error_widget.dart';
import 'package:skeletonizer/skeletonizer.dart';

import 'products_grid_view.dart';

class ProductsGridViewBlocBuilder extends StatelessWidget {
  const ProductsGridViewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsStates>(
      builder: (context, state) {
        if (state is ProductsSuccessState) {
          return ProductsGridView(products: state.products);
        } else if (state is ProductsFailureState) {
          return SliverToBoxAdapter(
            child: CustomErrorWidget(text: state.errMessage),
          );
        } else {
          return Skeletonizer.sliver(
            enabled: true,

            child: ProductsGridView(products: getDummyProducts()),
          );
        }
      },
    );
  }
}
