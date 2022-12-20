import 'package:flutter/material.dart';

import '../../core/utils/color_constants.dart';
import '../../core/utils/size_utils.dart';

class AppDecoration {
  static BoxDecoration get outlineGray300 => BoxDecoration(
    color: ColorConstant.whiteA700,
    border: Border.all(
      color: ColorConstant.gray300,
      width: getHorizontalSize(
        1.00,
      ),
    ),
    boxShadow: [
      BoxShadow(
        color: ColorConstant.teal90026,
        spreadRadius: getHorizontalSize(
          2.00,
        ),
        blurRadius: getHorizontalSize(
          2.00,
        ),
        offset: Offset(
          0,
          0,
        ),
      ),
    ],
  );
  static BoxDecoration get fillLime70067 => BoxDecoration(
    color: ColorConstant.lime70067,
  );
  static BoxDecoration get txtOutlineGray9006a => BoxDecoration(
    border: Border.all(
      color: ColorConstant.gray9006a,
      width: getHorizontalSize(
        1.00,
      ),
    ),
  );
  static BoxDecoration get outlineTeal900261 => BoxDecoration(
    color: ColorConstant.whiteA700,
    boxShadow: [
      BoxShadow(
        color: ColorConstant.teal90026,
        spreadRadius: getHorizontalSize(
          2.00,
        ),
        blurRadius: getHorizontalSize(
          2.00,
        ),
        offset: Offset(
          0,
          3.4133334159851074,
        ),
      ),
    ],
  );
  static BoxDecoration get outlineTeal90026 => BoxDecoration(
    color: ColorConstant.whiteA700,
    boxShadow: [
      BoxShadow(
        color: ColorConstant.teal90026,
        spreadRadius: getHorizontalSize(
          2.00,
        ),
        blurRadius: getHorizontalSize(
          2.00,
        ),
        offset: Offset(
          0,
          0,
        ),
      ),
    ],
  );
  static BoxDecoration get txtFillTeal900 => BoxDecoration(
    color: ColorConstant.teal900,
  );
  static BoxDecoration get fillTeal900 => BoxDecoration(
    color: ColorConstant.teal900,
  );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
    color: ColorConstant.whiteA700,
  );
  static BoxDecoration get fillTeal9005e => BoxDecoration(
    color: ColorConstant.teal9005e.withOpacity(0.05),
  );
  static BoxDecoration get outlineGray9004c => BoxDecoration(
    color: ColorConstant.teal900,
    boxShadow: [
      BoxShadow(
        color: ColorConstant.gray9004c,
        spreadRadius: getHorizontalSize(
          2.00,
        ),
        blurRadius: getHorizontalSize(
          2.00,
        ),
        offset: Offset(
          0,
          1.7066667079925537,
        ),
      ),
    ],
  );
}

class BorderRadiusStyle {
  static BorderRadius txtCircleBorder15 = BorderRadius.circular(
    getHorizontalSize(
      15.00,
    ),
  );

  static BorderRadius roundedBorder7 = BorderRadius.circular(
    getHorizontalSize(
      7.00,
    ),
  );

  static BorderRadius txtRoundedBorder7 = BorderRadius.circular(
    getHorizontalSize(
      7.00,
    ),
  );

  static BorderRadius circleBorder15 = BorderRadius.circular(
    getHorizontalSize(
      15.00,
    ),
  );
}
