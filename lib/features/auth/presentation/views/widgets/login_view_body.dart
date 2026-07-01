import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/constants.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/utils/app_text_style.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/core/widgets/custom_text_form_field.dart';
import 'package:fruits_hub/core/widgets/password_field.dart';
import 'package:fruits_hub/features/auth/presentation/cubits/login_cubit/login_cubit.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/dont_have_acount.dart';
import 'package:fruits_hub/core/widgets/or_divider.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/social_icon_buttons.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String email, password;
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              SizedBox(height: 24),
              CustomTextFormField(
                onSaved: (value) {
                  email = value!;
                },
                hintText: 'البريد الإلكتروني',
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(height: 16),
              PasswordField(
                onSaved: (value) {
                  password = value!;
                },
              ),
              SizedBox(height: 16),
              GestureDetector(
                onTap: null,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'نسيت كلمة المرور؟',
                      style: TextStyles.semiBold13.copyWith(
                        color: AppColors.lightPrimaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 33),
              CustomButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    context.read<LoginCubit>().signInWithEmailAndPassword(
                      email,
                      password,
                    );
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },

                text: 'تسجيل دخول',
              ),
              SizedBox(height: 33),
              DontHaveAcountWidget(),
              SizedBox(height: 33),
              OrDivider(),
              SizedBox(height: 16),
              SocialIconButtons(
                onPressed: () {
                  context.read<LoginCubit>().signInWithGoogle();
                },
                image: Assets.imagesGoogle,
                text: 'تسجيل بواسطة جوجل',
              ),
              SizedBox(height: 16),
              Platform.isIOS
                  ? Column(
                      children: [
                        SocialIconButtons(
                          image: Assets.imagesApple,
                          text: 'تسجيل بواسطة أبل',
                        ),
                        SizedBox(height: 16),
                      ],
                    )
                  : SizedBox(),

              SocialIconButtons(
                onPressed: () {
                  context.read<LoginCubit>().signInWithFacebook();
                },
                image: Assets.imagesFacebook,
                text: 'تسجيل بواسطة فيسبوك',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
