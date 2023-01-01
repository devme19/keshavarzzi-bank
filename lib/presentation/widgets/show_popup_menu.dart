import 'package:bank_keshavarzi/presentation/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/utils/color_constants.dart';
import '../../core/utils/image_constants.dart';
import '../../core/utils/size_utils.dart';
import '../themes/app_style.dart';
import 'common_image_view.dart';

void showPopupMenu(context) async {
  await showMenu(
    context: context,
    shape:RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(getSize(7)),
      ),
    ),
    position:  RelativeRect.fromLTRB(getHorizontalSize(22), getVerticalSize(74), getHorizontalSize(73), 0),
    items: [
      PopupMenuItem(
        value: 1,
        child: FittedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "msg14".tr,
                textAlign: TextAlign.right,
                style: AppStyle.txtIRANSansMobileFaNum12Teal9007e,
              ),
              SizedBox(width: getVerticalSize(9.67),),
              CommonImageView(
                svgPath: ImageConstant.imgComputer,
                color: ColorConstant.teal900,
                height: getVerticalSize(16.67),
              ),
            ],
          ),
        ),
      ),
      PopupMenuItem(
        value: 2,

        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "lbl31".tr,
              textAlign: TextAlign.center,
              style: AppStyle.txtIRANSansMobileFaNum12Teal9007e,
            ),
            SizedBox(width: getVerticalSize(9.67),),
            CommonImageView(
              svgPath: ImageConstant.imgNearBranches,
              color: ColorConstant.teal900,
              height: getVerticalSize(16.67),
            ),
          ],
        ),
      ),

      PopupMenuItem(
        value: 3,

        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "lbl32".tr,
              textAlign: TextAlign.center,
              style: AppStyle.txtIRANSansMobileFaNum12Teal9007e,
            ),
            SizedBox(width: getVerticalSize(9.67),),
            CommonImageView(
              svgPath: ImageConstant.imgQuestion,
              color: ColorConstant.teal900,
              height: getVerticalSize(16.67),
            ),
          ],
        ),
      ),
    ],
    elevation: 8.0,
  ).then((value) {
    if(value == 1){
      Get.toNamed(AppRoutes.servicesWithoutAccountPage);
    }
// NOTE: even you didnt select item this method will be called with null of value so you should call your call back with checking if value is not null

    if (value != null) print(value);
  });
}