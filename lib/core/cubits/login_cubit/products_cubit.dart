import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/cubits/login_cubit/products_states.dart';
import 'package:fruits_hub/core/repos/products_repo/product_repo.dart';

class ProductsCubit extends Cubit<ProductsStates> {
  ProductsCubit(this.productRepo) : super(ProductsInitialState());
  final ProductRepo productRepo;
  int productLength = 0;
  Future<void> getProducts() async {
    emit(ProductsLoadingState());
    final result = await productRepo.getProducts();
    result.fold(
      (failure) {
        emit(ProductsFailureState(errMessage: failure.message));
      },
      (products) {
        productLength = products.length;
        emit(ProductsSuccessState(products: products));
      },
    );
  }

  Future<void> getBestSellingProducts() async {
    emit(ProductsLoadingState());
    final result = await productRepo.getBestSellingProducts();
    result.fold(
      (failure) {
        emit(ProductsFailureState(errMessage: failure.message));
      },
      (products) {
        emit(ProductsSuccessState(products: products));
      },
    );
  }
}
