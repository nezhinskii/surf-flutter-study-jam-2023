import 'package:flutter/material.dart';
import 'package:surf_flutter_study_jam_2023/utils/app_colors.dart';
import 'package:surf_flutter_study_jam_2023/utils/app_strings.dart';

class UrlInput extends StatelessWidget {
  const UrlInput({Key? key, required this.controller, required this.hasError}) : super(key: key);

  final TextEditingController controller;
  final bool hasError;

  static const defaultBorder = OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.main, width: 2),
    borderRadius: BorderRadius.all(Radius.circular(15))
  );

  static const errorBorder = OutlineInputBorder(
    borderSide: BorderSide(color: Colors.red, width: 2),
    borderRadius: BorderRadius.all(Radius.circular(15))
  );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: const TextStyle(
        decoration: TextDecoration.none
      ),
      cursorColor: AppColors.main,
      decoration: InputDecoration(
        labelStyle: const TextStyle(
          color: Colors.grey
        ),
        errorText: hasError ? AppStrings.enterUrlError : null,
        errorBorder: UrlInput.errorBorder,
        focusedErrorBorder: UrlInput.errorBorder,
        labelText: AppStrings.enterUrl,
        focusedBorder: UrlInput.defaultBorder,
        enabledBorder: UrlInput.defaultBorder
      ),
    );
  }
}
