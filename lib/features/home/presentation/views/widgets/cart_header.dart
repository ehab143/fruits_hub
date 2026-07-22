import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_style.dart';

class CartHeader extends StatelessWidget {
  const CartHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      decoration: BoxDecoration(color: Color(0xffEBF9F1)),
      child: Center(
        child: Text(
          ' لديك 3 منتجات في سلة التسوق',
          style: TextStyles.regular13,
        ),
      ),
    );
  }
}
