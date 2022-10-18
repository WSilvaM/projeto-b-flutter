import 'package:app_figurinhas_copa22/styles/colors_styles.dart';
import 'package:app_figurinhas_copa22/styles/text_styles.dart';
import 'package:flutter/material.dart';

class ButtonStyles {
  static ButtonStyles? _instance;

  ButtonStyles._();

  static ButtonStyles get i {
    _instance ??= ButtonStyles._();
    return _instance!;
  }

  ButtonStyle get yellowButton => ElevatedButton.styleFrom(
        backgroundColor: ColorsApp.i.yeallow,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        textStyle:
            TextStyles.i.textSecondaryFontExtraBold.copyWith(fontSize: 14),
      );

  ButtonStyle get yellowOutlineButton => OutlinedButton.styleFrom(
        //backgroundColor: ColorsApp.i.yeallow,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        side: BorderSide(color: ColorsApp.i.yeallow),
        textStyle:
            TextStyles.i.textSecondaryFontExtraBold.copyWith(fontSize: 14),
      );

  ButtonStyle get primaryButton => ElevatedButton.styleFrom(
        backgroundColor: ColorsApp.i.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        textStyle:
            TextStyles.i.textSecondaryFontExtraBold.copyWith(fontSize: 14),
      );
  ButtonStyle get primaryOutlineButton => ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        side: BorderSide(color: ColorsApp.i.primary),
        textStyle:
            TextStyles.i.textSecondaryFontExtraBold.copyWith(fontSize: 14),
      );

  get textSecondaryFontExtraBoldPrimaryColor => null;
}

extension ButtonStylesExtensions on BuildContext {
  ButtonStyles get buttonStyles => ButtonStyles.i;
}
