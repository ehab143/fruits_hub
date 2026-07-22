import 'package:flutter/material.dart';
import 'package:fruits_hub/constants.dart';
import 'package:fruits_hub/core/widgets/build_app_bar.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/cart_header.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/cart_item.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/cart_items_list.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/custom_divider.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(height: kTopPadding),
                  buildAppBar(context, title: 'السلة', showNotification: false),
                  SizedBox(height: 12),
                  CartHeader(),
                  SizedBox(height: 12),
                ],
              ),
            ),
            SliverToBoxAdapter(child: CustomDivider()),
            CartItemsList(),
            SliverToBoxAdapter(child: CustomDivider()),
          ],
        ),

        Positioned(
          left: 16,
          right: 16,
          bottom: MediaQuery.sizeOf(context).height * 0.05,

          child: CustomButton(onPressed: () {}, text: 'الدفع 120 جنيه'),
        ),
      ],
    );
  }
}
