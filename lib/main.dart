import 'package:demo_app/core/color/app_color.dart';
import 'package:flutter/material.dart';

import 'features/post/ui/post_detail_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Application',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          inputDecorationTheme: const InputDecorationTheme(hintStyle: TextStyle(color: AppColors.hintColor, fontSize: 12)),
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            backgroundColor: Colors.white,
            elevation: 0,
          ),
          dividerTheme: const DividerThemeData(
            color: AppColors.dividerColor,
          ),
          textButtonTheme: TextButtonThemeData(
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.resolveWith((states) => Size(80, 46)),
              backgroundColor: MaterialStateProperty.resolveWith(
                (states) => AppColors.buttonColor,
              ),
            ),
          ),
          chipTheme: ChipThemeData(
              backgroundColor: AppColors.chipFillColor,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(99), side: const BorderSide(color: AppColors.chipBorderColor,)),
              labelStyle: const TextStyle(
                color: AppColors.chipTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ))),
      home: const PostDetailPage(),
    );
  }
}
