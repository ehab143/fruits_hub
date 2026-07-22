import 'package:fruits_hub/core/entities/product_entity.dart';

abstract class ProductsStates {}

class ProductsInitialState extends ProductsStates {}

class ProductsLoadingState extends ProductsStates {}

class ProductsSuccessState extends ProductsStates {
  final List<ProductEntity> products;

  ProductsSuccessState({required this.products});
}

class ProductsFailureState extends ProductsStates {
  final String errMessage;

  ProductsFailureState({required this.errMessage});
}
