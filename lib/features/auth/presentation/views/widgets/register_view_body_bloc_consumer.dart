import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/features/auth/presentation/cubits/register_cubit/register_cubit.dart';
import 'package:fruits_hub/features/auth/presentation/cubits/register_cubit/register_state.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/register_view_body.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import 'build_error_bar.dart';

class RegisterViewBodyBlocConsumer extends StatelessWidget {
  const RegisterViewBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (BuildContext context, state) {
        if (state is RegisterFailure) {
          buildErrorBar(context, state.message);
        } else if (state is RegisterSuccess) {
          Navigator.pop(context);
        }
      },
      builder: (BuildContext context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is RegisterLoading ? true : false,
          child: RegisterViewBody(),
        );
      },
    );
  }
}
