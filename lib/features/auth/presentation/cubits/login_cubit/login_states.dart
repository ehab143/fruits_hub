import 'package:fruits_hub/features/auth/domain/entities/user_entity.dart';

abstract class LoginStates {}

class LoginInitialState extends LoginStates {}

class LoginLoadingState extends LoginStates {}

class LoginSuccessState extends LoginStates {
  final UserEntity userEntity;

  LoginSuccessState({required this.userEntity});
}

class LoginFailureState extends LoginStates {
  final String message;

  LoginFailureState({required this.message});
}
