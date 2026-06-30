import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/features/auth/domain/repos/auth_repo.dart';
import 'package:fruits_hub/features/auth/presentation/cubits/login_cubit/login_states.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit(this.authRepo) : super(LoginInitialState());

  final AuthRepo authRepo;
  Future<void> signInWithEmailAndPassword(String email, String password) async {
    emit(LoginLoadingState());
    final result = await authRepo.signInWithEmailAndPassword(email, password);
    result.fold(
      (failure) => emit(LoginFailureState(message: failure.message)),
      (userEntity) => emit(LoginSuccessState(userEntity: userEntity)),
    );
  }
}
