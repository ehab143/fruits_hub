import 'package:flutter/material.dart';
import 'package:fruits_hub/constants.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/cart_item.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/custom_divider.dart';

class CartItemsList extends StatelessWidget {
  const CartItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(bottom: 100.0),
      sliver: SliverList.separated(
        itemCount: 15,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: CartItem(),
          );
        },
        separatorBuilder: (context, index) => CustomDivider(),
      ),
    );
  }
}
