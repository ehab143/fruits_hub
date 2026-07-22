import 'package:fruits_hub/core/repos/products_repo/product_repo.dart';
import 'package:fruits_hub/core/repos/products_repo/product_repo_impl.dart';
import 'package:fruits_hub/core/services/data_base_service.dart';
import 'package:fruits_hub/core/services/fire_store_service.dart';
import 'package:fruits_hub/core/services/firebase_auth_services.dart';
import 'package:fruits_hub/features/auth/data/repos/auth_repo_impl.dart';
import 'package:fruits_hub/features/auth/domain/repos/auth_repo.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;
void setUpGetIt() {
  getIt.registerSingleton<FirebaseAuthServices>(FirebaseAuthServices());
  getIt.registerSingleton<DataBaseService>(FireStoreService());

  getIt.registerSingleton<AuthRepo>(
    AuthRepoImpl(
      firebaseAuthServices: getIt<FirebaseAuthServices>(),
      dataBaseService: getIt<DataBaseService>(),
    ),
  );

  getIt.registerSingleton<ProductRepo>(
    ProductRepoImpl(getIt<DataBaseService>()),
  );
}
