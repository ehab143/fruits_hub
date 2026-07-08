import 'package:fruits_hub/core/utils/app_images.dart';

class BottomNavigationBarItemEntity {
  final String isActiveImage, isInActiveImage;
  final String name;

  BottomNavigationBarItemEntity({
    required this.isActiveImage,
    required this.isInActiveImage,
    required this.name,
  });
}

List<BottomNavigationBarItemEntity> get bottomNavigationBarItems => [
  BottomNavigationBarItemEntity(
    isActiveImage: Assets.imagesBoldHome,
    isInActiveImage: Assets.imagesOutlinedHome,
    name: 'الرئيسية',
  ),
  BottomNavigationBarItemEntity(
    isActiveImage: Assets.imagesBoldProducts,
    isInActiveImage: Assets.imagesOutlinedProducts,
    name: 'المنتجات',
  ),
  BottomNavigationBarItemEntity(
    isActiveImage: Assets.imagesBoldShoppingCart,
    isInActiveImage: Assets.imagesOutlinedShoppingCart,
    name: 'سلة التسوق',
  ),
  BottomNavigationBarItemEntity(
    isActiveImage: Assets.imagesBoldUser,
    isInActiveImage: Assets.imagesOutlinedUser,
    name: 'حسابي',
  ),
];
