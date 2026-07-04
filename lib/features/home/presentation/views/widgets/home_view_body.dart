import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Welcome to Home View',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ],
    );
  }
}
