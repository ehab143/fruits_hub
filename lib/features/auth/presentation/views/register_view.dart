import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/services/get_it_service.dart';
import 'package:fruits_hub/core/widgets/custom_app_bar.dart';
import 'package:fruits_hub/features/auth/domain/repos/auth_repo.dart';
import 'package:fruits_hub/features/auth/presentation/cubits/register_cubit/register_cubit.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/register_view_body_bloc_consumer.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});
  static const String routeName = 'registerView';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(getIt<AuthRepo>()),
      child: Scaffold(
        appBar: buildAppBar(context, text: 'حساب جديد'),
        body: RegisterViewBodyBlocConsumer(),
      ),
    );
  }
}
