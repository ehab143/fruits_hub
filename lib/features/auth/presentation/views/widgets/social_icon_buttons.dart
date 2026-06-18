import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_hub/core/utils/app_text_style.dart';

class SocialIconButtons extends StatelessWidget {
  const SocialIconButtons({
    super.key,
    this.onPressed,
    required this.image,
    required this.text,
  });
  final void Function()? onPressed;
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: TextButton(
        style: TextButton.styleFrom(
          side: BorderSide(color: Color(0xffDCDEDE), width: 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        onPressed: onPressed,
        child: ListTile(
          visualDensity: VisualDensity(vertical: VisualDensity.minimumDensity),
          leading: SvgPicture.asset(image),
          title: Text(
            textAlign: TextAlign.center,
            text,
            style: TextStyles.semiBold16,
          ),
        ),
      ),
    );
  }
}
