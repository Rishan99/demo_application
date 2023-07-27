import 'package:demo_app/core/color/app_color.dart';
import 'package:demo_app/core/constant/image_const.dart';
import 'package:demo_app/core/constant/styles.dart';
import 'package:demo_app/features/post/widget/add_commet_widget.dart';
import 'package:demo_app/features/post/widget/comment_widget.dart';
import 'package:demo_app/features/post/widget/summary_widget.dart';

import 'package:demo_app/features/post/widget/user_heading_widget.dart';
import 'package:demo_app/widget/image_slider.dart';
import 'package:demo_app/widget/seperator_box.dart';

import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  PostWidget({super.key});
  final List<String> images = [
    'https://wjddnjs754.cafe24.com/web/product/small/202303/5b9279582db2a92beb8db29fa1512ee9.jpg',
    'https://wjddnjs754.cafe24.com/web/product/small/202303/5b9279582db2a92beb8db29fa1512ee9.jpg',
    'https://wjddnjs754.cafe24.com/web/product/small/202303/5b9279582db2a92beb8db29fa1512ee9.jpg',
    'https://wjddnjs754.cafe24.com/web/product/small/202303/5b9279582db2a92beb8db29fa1512ee9.jpg',
  ];
  final List<String> data = ['2023', 'TODAYISMONDAY', 'TOP', 'POPS!', 'WOW', 'ROW'];
  final String title = '지난 월요일에 했던 이벤트 중 가장 괜찮은 상품 뭐야?';
  final String description = '''지난 월요일에 2023년 S/S 트렌드 알아보기 이벤트 참석했던 팝들아~
혹시 어떤 상품이 제일 괜찮았어? 

후기 올라오는거 보면 로우라이즈? 그게 제일 반응 좋고 그 테이블이 
제일 재밌었다던데 맞아???

올해 로우라이즈가 트렌드라길래 나도 도전해보고 싶은데 말라깽이가
아닌 사람들도 잘 어울릴지 너무너무 궁금해ㅜㅜ로우라이즈 테이블에
있었던 팝들 있으면 어땠는지 후기 좀 공유해주라~~!''';
  final String commentOne = '''어머 제가 있던 테이블이 제일 반응이 좋았나보네요🤭 
우짤래미님도 아시겠지만 저도 일반인 몸매 그 이상도 이하도
아니잖아요?! 그런 제가 기꺼이 도전해봤는데 생각보다
괜찮았어요! 오늘 중으로 라이브 리뷰 올라온다고 하니
꼭 봐주세용~!''';
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(padding: pageSidePadding, child: headerSection()),
        ImageSlider(
          images: images,
          height: 450,
        ),
        Padding(
          padding: pageSidePadding.copyWith(bottom: 4, top: 4),
          child: const SummaryWidget(),
        ),
        const Divider(
          thickness: 3,
          height: 2,
        ),
        const SeperatorBox(
          height: 12,
        ),
        Padding(
          padding: pageSidePadding,
          child: CommentWidget(
            name: '안녕 나 응애',
            image: ImageConsts.profilePicture,
            isVerified: true,
            comment: commentOne,
            addReplies: true,
          ),
        ),
        const SeperatorBox(height: 10),
        const Divider(
          height: 1,
          thickness: 2,
        ),
        const AddCommentWidget()
      ],
    );
  }

  Widget headerSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(child: UserHeadingWidget(showSubText: true, name: '안녕 나 응애', image: ImageConsts.profilePicture)),
            TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.resolveWith((states) => Size(58, 10)),
                  padding: MaterialStateProperty.resolveWith((states) => EdgeInsets.symmetric(horizontal: 16, vertical: 6)),
                  backgroundColor: MaterialStateProperty.resolveWith(
                    (states) => AppColors.buttonColor,
                  ),
                ),
                child: const Text(
                  '팔로우',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ))
          ],
        ),
        const SeperatorBox(
          height: 12,
        ),
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w700),
        ),
        const SeperatorBox(
          height: 14,
        ),
        Text(
          description,
          style: const TextStyle(fontSize: 12, color: AppColors.commentTextColor),
        ),
        const SeperatorBox(
          height: 10,
        ),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: data.map((e) => Chip(label: Text('#${e.toUpperCase()}'))).toList(),
        ),
        const SeperatorBox(
          height: 12,
        ),
      ],
    );
  }
}
