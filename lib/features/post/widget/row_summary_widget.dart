import 'package:demo_app/core/color/app_color.dart';
import 'package:flutter/material.dart';

import 'package:demo_app/widget/svg_picture_widget.dart';

class RowSummaryWidget extends StatelessWidget {
  final String value;
  final String image;
  const RowSummaryWidget({
    Key? key,
    required this.value,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (image.split('/').last.split('.').last != 'svg')
            Image.asset(
              image,
              height: 32,
              width: 32,
            )
          else
            SvgPictureWidget(imagePath: image),
          Text(
            value,
            style: const TextStyle(color: AppColors.subTextColor),
          )
        ],
      ),
    );
  }
}
