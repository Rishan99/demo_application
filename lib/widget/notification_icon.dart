import 'package:demo_app/core/constant/icon_const.dart';
import 'package:demo_app/widget/svg_picture_widget.dart';
import 'package:flutter/material.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPictureWidget(
      imagePath: IconConsts.notification,
      onTap: () {},
    );
  }
}
