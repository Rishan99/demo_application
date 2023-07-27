import 'package:demo_app/core/constant/icon_const.dart';
import 'package:demo_app/features/post/widget/row_summary_widget.dart';

import 'package:flutter/material.dart';

class SummaryWidget extends StatelessWidget {
  const SummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          RowSummaryWidget(value: '5', image: IconConsts.favourite),
          RowSummaryWidget(value: '5', image: IconConsts.comment),
          RowSummaryWidget(value: '', image: IconConsts.bookmark),
          RowSummaryWidget(value: '', image: IconConsts.horizontalMenu),
        ],
      ),
    );
  }
}
