import 'package:demo_app/features/post/widget/post_widget.dart';
import 'package:demo_app/widget/custom_back_button.dart';
import 'package:demo_app/widget/notification_icon.dart';
import 'package:flutter/material.dart';

class PostDetailPage extends StatelessWidget {
  const PostDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 44,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        leading: const CustomBackButton(),
        title: const Text(
          '자유톡',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        actions: const [NotificationWidget()],
      ),
      body: SingleChildScrollView(
        child: PostWidget(),
      ),
    );
  }
}
