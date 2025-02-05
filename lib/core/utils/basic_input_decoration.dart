import 'package:dictii2/core/theme/app_colors.dart';
import 'package:dictii2/core/theme/app_typography.dart';
import 'package:flutter/material.dart';

class BasicInputDecoration {
  final String title;

  BasicInputDecoration({required this.title});

  InputDecoration get decoration {
    return InputDecoration(
      hintText: title,
      alignLabelWithHint: true,
      labelStyle:
          const AppTypography().regular.copyWith(color: AppColors.greyDarkText),
      focusedBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        borderSide: BorderSide(color: Colors.purple, width: 2),
      ),
      enabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        borderSide: BorderSide(color: AppColors.greyDarkText, width: 2),
      ),
      errorBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        borderSide: BorderSide(color: Colors.red, width: 2),
      ),
      focusedErrorBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        borderSide: BorderSide(color: Colors.red, width: 2),
      ),
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        borderSide: BorderSide(color: AppColors.greyDarkText, width: 2),
      ),
    );
  }
}
