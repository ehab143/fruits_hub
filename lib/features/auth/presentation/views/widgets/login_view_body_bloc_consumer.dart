import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/widgets/custom_progress_hud.dart';
import 'package:fruits_hub/features/auth/presentation/cubits/login_cubit/login_cubit.dart';
import 'package:fruits_hub/features/auth/presentation/cubits/login_cubit/login_states.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/build_error_bar.dart';

import '../../../../home/presentation/views/main_view.dart';
import 'login_view_body.dart';

class LoginViewBodyBlocConsumer extends StatelessWidget {
  const LoginViewBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginStates>(
      listener: (BuildContext context, LoginStates state) {
        if (state is LoginSuccessState) {
          Navigator.pushNamed(context, MainView.routeName);
        } else if (state is LoginFailureState) {
          buildErrorBar(context, state.message);
        }
      },
      builder: (BuildContext context, LoginStates state) {
        return CustomProgressHud(
          isLoading: state is LoginLoadingState ? true : false,
          child: LoginViewBody(),
        );
      },
    );
  }
}
