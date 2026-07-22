import 'package:flutter/material.dart';

class CartItemActionButton extends StatelessWidget {
  const CartItemActionButton({
    super.key,
    required this.color,
    required this.iconColor,
    required this.icon,
    required this.onTap,
  });
  final Color color;
  final Color iconColor;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 24,
        height: 24,
        padding: EdgeInsets.all(2),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          color: color,
        ),
        child: FittedBox(child: Icon(icon, color: iconColor)),
      ),
    );
  }
}
