import 'package:flutter/material.dart';
import 'package:fruits_hub/features/auth/presentation/views/login_view.dart';
import 'package:fruits_hub/features/auth/presentation/views/register_view.dart';
import 'package:fruits_hub/features/best_selling/presentation/views/best_selling_view.dart';
import 'package:fruits_hub/features/onBoarding/presentation/views/on_boarding_view.dart';
import 'package:fruits_hub/features/splash/presentation/views/splash_view.dart';

import '../../features/home/presentation/views/main_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (_) => const SplashView());

    case RegisterView.routeName:
      return MaterialPageRoute(builder: (_) => const RegisterView());
    case BestSellingView.routeName:
      return MaterialPageRoute(builder: (_) => const BestSellingView());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (_) => const OnBoardingView());
    case LoginView.routeName:
      return MaterialPageRoute(builder: (_) => const LoginView());
    case MainView.routeName:
      return MaterialPageRoute(builder: (_) => const MainView());
    default:
      return MaterialPageRoute(builder: (_) => const Placeholder());
  }
}
