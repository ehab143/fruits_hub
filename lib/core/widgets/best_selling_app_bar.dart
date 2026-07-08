import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_style.dart';
import 'package:fruits_hub/core/widgets/notification_widget.dart';

class BestSellingAppBar extends StatelessWidget {
  const BestSellingAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      title: Text('الأكثر مبيعًا', style: TextStyles.bold19),
      centerTitle: true,

      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back_ios_new_outlined),
      ),
      actions: [NotificationWidget()],
    );
  }
}
