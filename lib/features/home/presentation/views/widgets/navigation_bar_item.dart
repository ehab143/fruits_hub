import 'package:flutter/material.dart';
import 'package:fruits_hub/features/home/domain/entities/bottom_navigation_bar_item_entity.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/active_item.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/inactive_item.dart';

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({
    super.key,
    required this.isSelected,
    required this.bottomNavigationBarItemEntity,
  });
  final bool isSelected;
  final BottomNavigationBarItemEntity bottomNavigationBarItemEntity;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveItem(
            image: bottomNavigationBarItemEntity.isActiveImage,
            name: bottomNavigationBarItemEntity.name,
          )
        : InActiveItem(image: bottomNavigationBarItemEntity.isInActiveImage);
  }
}
