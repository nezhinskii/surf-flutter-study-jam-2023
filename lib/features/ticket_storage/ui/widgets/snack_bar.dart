import 'package:flutter/material.dart';
import 'package:surf_flutter_study_jam_2023/utils/app_text_styles.dart';

void showSnackBar({
  required BuildContext context,
  required String message,
  required Color color,
  bool hasAction = false,
  Duration duration = const Duration(seconds: 2)})
{
  final snackBar = SnackBar(
    backgroundColor: color,
    behavior: SnackBarBehavior.fixed,
    dismissDirection: DismissDirection.vertical,
    content: Text(message, style: AppTextStyles.white),
    duration: duration,
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}