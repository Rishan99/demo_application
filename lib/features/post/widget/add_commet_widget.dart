import 'package:demo_app/core/color/app_color.dart';
import 'package:demo_app/core/constant/icon_const.dart';

import 'package:demo_app/core/constant/styles.dart';
import 'package:demo_app/widget/svg_picture_widget.dart';
import 'package:flutter/material.dart';

class AddCommentWidget extends StatelessWidget {
  const AddCommentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: pageSidePadding.left, vertical: 10),
      child: Row(
        children: [
          const SvgPictureWidget(
            imagePath: IconConsts.galery,
          ),
          Expanded(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  '댓글을 남겨주세요.',
                  style: Theme.of(context).inputDecorationTheme.hintStyle,
                )),
          ),
          const Text(
            '등록',
            style: TextStyle(fontSize: 12, color: AppColors.subTextColor, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
