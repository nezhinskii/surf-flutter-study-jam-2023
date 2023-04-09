import 'package:flutter/material.dart';
import 'package:surf_flutter_study_jam_2023/utils/app_colors.dart';
import 'package:surf_flutter_study_jam_2023/utils/app_text_styles.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({
    Key? key,
    this.width,
    this.height,
    this.onPressed,
    this.textStyle,
    this.backgroundColor,
    required this.title,
  }) : super(key: key);

  final double? width;
  final double? height;
  final Function()? onPressed;
  final TextStyle? textStyle;
  final Color? backgroundColor;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 50,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(5),
          backgroundColor: MaterialStateProperty.all(backgroundColor ?? AppColors.lightBackground),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
            )
          )
        ),
        child: Text(title, style: textStyle ?? AppTextStyles.floatingButton,)
      ),
    );
  }
}
