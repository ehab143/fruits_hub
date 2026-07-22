import 'package:fruits_hub/core/entities/product_entity.dart';

ProductEntity getDummtProduct() {
  return ProductEntity(
    name: 'Fresh Red Apple',
    description: 'Crisp, juicy red apples perfect for snacking and baking.',
    price: 2.49,
    code: 'APL-RED-001',

    isFeatured: true,
    expirationMonths: 2,
    numberOfCalories: 95,
    unitAmount: 1,
    reviews: [],
    imageUrl: null,
    isOrganic: true,
  );
}

List<ProductEntity> getDummyProducts() {
  return [
    getDummtProduct(),
    getDummtProduct(),
    getDummtProduct(),
    getDummtProduct(),
    getDummtProduct(),
    getDummtProduct(),
    getDummtProduct(),
  ];
}
