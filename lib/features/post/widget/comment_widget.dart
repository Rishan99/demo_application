import 'package:demo_app/features/post/widget/row_summary_widget.dart';
import 'package:flutter/material.dart';
import 'package:demo_app/core/color/app_color.dart';
import 'package:demo_app/core/constant/icon_const.dart';
import 'package:demo_app/core/constant/image_const.dart';
import 'package:demo_app/features/post/widget/user_heading_widget.dart';
import 'package:demo_app/widget/svg_picture_widget.dart';

class CommentWidget extends StatelessWidget {
  final String name;
  final String image;
  final bool isVerified;
  final String comment;
  final bool addReplies;
  const CommentWidget({
    Key? key,
    required this.name,
    required this.image,
    required this.isVerified,
    required this.comment,
    required this.addReplies,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(child: UserHeadingWidget(showSubText: false, name: name, image: image)),
            const SizedBox(
              width: 8,
            ),
            const SvgPictureWidget(imagePath: IconConsts.horizontalMenu),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 45),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                comment,
                style: const TextStyle(fontSize: 12, color: AppColors.commentTextColor),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const RowSummaryWidget(value: '5', image: IconConsts.favourite),
                    if (addReplies) const RowSummaryWidget(value: '5', image: IconConsts.comment),
                  ],
                ),
              ),
              if (addReplies)
                const CommentWidget(
                  name: 'ㅇㅅㅇ',
                  image: ImageConsts.profilePictureTwo,
                  isVerified: false,
                  comment: '오 대박! 라이브 리뷰 오늘 올라온대요? 챙겨봐야겠다',
                  addReplies: false,
                ),
            ],
          ),
        )
      ],
    );
  }
}
