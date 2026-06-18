import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_style.dart';

AppBar buildAppBar(context, {required String text}) {
  return AppBar(
    backgroundColor: Colors.white,
    centerTitle: true,
    title: Text(textAlign: TextAlign.center, text, style: TextStyles.bold19),
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(Icons.arrow_back_ios_new, color: Color(0xff0C0D0D)),
    ),
  );
}
