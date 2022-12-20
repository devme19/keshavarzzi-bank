import 'package:bank_keshavarzi/presentation/themes/app_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/utils/color_constants.dart';
import '../../../core/utils/image_constants.dart';
import '../../../core/utils/size_utils.dart';
import '../../widgets/app_bar/app_bar_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';

class ServicesWithoutAccountPage extends StatelessWidget {
  const ServicesWithoutAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: ColorConstant.whiteA700,
        appBar:
        CustomAppBar(
            height: getVerticalSize(81.00),
            title: Text("msg14".tr,
                style: AppStyle.txtIRANSansMobileFaNumMedium14Lime700),
            centerTitle: true,
            leadingWidth: 54,
            actions: [
              AppbarImage(
                  onTap: ()=> Get.back(),
                  height: getSize(24.00),
                  width: getSize(24.00),
                  svgPath: ImageConstant.imgArrowright,
                  margin: getMargin(right: 25, top: 20, bottom: 21)),
            ],
            styleType: Style.bgFillWhiteA700),
        body:
        SingleChildScrollView(
          child:
          SizedBox(
            height: pageHeight,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
              ],
            ),
          ),
        ),
      ),
    );
  }
}
