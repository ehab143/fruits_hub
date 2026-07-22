import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_style.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/cart_item_action_button.dart';

class CartItemActionButtons extends StatelessWidget {
  const CartItemActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CartItemActionButton(
          onTap: () {},
          color: AppColors.primaryColor,
          icon: Icons.add,
          iconColor: Color(0xffFFFFFF),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            '3',
            style: TextStyles.bold16,
            textAlign: TextAlign.center,
          ),
        ),

        CartItemActionButton(
          onTap: () {},

          color: Color(0xffF1F1F5),
          icon: Icons.remove,
          iconColor: Color(0xff979899),
        ),
      ],
    );
  }
}
