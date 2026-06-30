import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/constants.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/core/widgets/custom_text_form_field.dart';
import 'package:fruits_hub/core/widgets/password_field.dart';
import 'package:fruits_hub/features/auth/presentation/cubits/register_cubit/register_cubit.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/build_error_bar.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/have_an_acount.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/terms_and_conditions_widget.dart';

class RegisterViewBody extends StatefulWidget {
  const RegisterViewBody({super.key});

  @override
  State<RegisterViewBody> createState() => _RegisterViewBodyState();
}

class _RegisterViewBodyState extends State<RegisterViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String name, email, password;
  late bool isTermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              SizedBox(height: 24),
              CustomTextFormField(
                hintText: 'الاسم كامل',
                textInputType: TextInputType.name,
                onSaved: (value) {
                  name = value!;
                },
              ),
              SizedBox(height: 16),
              CustomTextFormField(
                hintText: 'البريد الإلكتروني',
                textInputType: TextInputType.emailAddress,
                onSaved: (value) {
                  email = value!;
                },
              ),
              SizedBox(height: 16),
              PasswordField(
                onSaved: (value) {
                  password = value!;
                },
              ),
              SizedBox(height: 16),
              TermsAndConditionsWidget(
                onChanged: (value) {
                  isTermsAccepted = value;
                },
              ),
              SizedBox(height: 30),
              CustomButton(
                text: 'إنشاء حساب جديد',

                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    if (isTermsAccepted) {
                      context
                          .read<RegisterCubit>()
                          .createUserWithEmailAndPassword(
                            email,
                            password,
                            name,
                          );
                    } else {
                      buildErrorBar(
                        context,
                        'يجب الموافقة على الشروط والأحكام',
                      );
                    }
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
              ),
              SizedBox(height: 26),
              HaveAnAcount(),
            ],
          ),
        ),
      ),
    );
  }
}
