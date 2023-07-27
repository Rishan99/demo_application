import 'package:demo_app/core/constant/icon_const.dart';
import 'package:flutter/material.dart';
import 'package:demo_app/core/color/app_color.dart';
import 'package:demo_app/widget/svg_picture_widget.dart';

import 'user_avatar.dart';

class UserHeadingWidget extends StatelessWidget {
  final String name;
  final String image;
  final bool showVerifiedIcon;
  final bool showSubText;
  const UserHeadingWidget({
    Key? key,
    required this.name,
    this.showVerifiedIcon = true,
    required this.image,
    required this.showSubText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        UserAvatar(
          image: image,
        ),
        const SizedBox(
          width: 5,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: const TextStyle(fontWeight: FontWeight.w700),
                ),
                if (showVerifiedIcon)
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2),
                    child: SvgPictureWidget(imagePath: IconConsts.verified),
                  )
                else
                  const SizedBox(
                    width: 4,
                  ),
                const Text(
                  '1일전',
                  style: TextStyle(fontSize: 10, color: AppColors.subTextColor, fontWeight: FontWeight.w500),
                )
              ],
            ),
            if (showSubText)
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '165cm',
                    style: TextStyle(color: AppColors.subTextColor),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  CircleAvatar(
                    radius: 1,
                    backgroundColor: AppColors.subTextColor,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    '53kg',
                    style: TextStyle(color: AppColors.subTextColor),
                  )
                ],
              )
          ],
        ),
      ],
    );
  }
}
