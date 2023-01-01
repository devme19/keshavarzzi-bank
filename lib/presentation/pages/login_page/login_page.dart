import 'package:bank_keshavarzi/presentation/routes/app_routes.dart';
import 'package:bank_keshavarzi/presentation/themes/app_decoration.dart';
import 'package:bank_keshavarzi/presentation/widgets/footer_widget.dart';
import 'package:bank_keshavarzi/presentation/widgets/my_text_field.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../core/utils/color_constants.dart';
import '../../../core/utils/image_constants.dart';
import '../../../core/utils/size_utils.dart';
import '../../themes/app_style.dart';
import '../../widgets/app_bar/app_bar_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/common_image_view.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/show_popup_menu.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    return
      SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: ColorConstant.whiteA700,
        appBar:
        CustomAppBar(
            height: getVerticalSize(81.00),
            leadingWidth: 65,
            leading: AppbarImage(
                onTap: ()=> showPopupMenu(context),
                height: getSize(24.00),
                width: getSize(24.00),
                svgPath: ImageConstant.imgOverflowmenu,
                margin: getMargin(left: 30, top: 36, bottom: 21)),
            actions: [
              AppbarImage(
                  height: getSize(24.00),
                  width: getSize(24.00),
                  svgPath: ImageConstant.imgVuesaxlinearmoon,
                  margin:
                  getMargin(left: 30, top: 36, right: 30, bottom: 21))
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
                Expanded(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: getPadding(
                            left: 30,
                            right: 30,
                          ),
                          child: CommonImageView(
                            imagePath: ImageConstant.imgImage1,
                            height: getVerticalSize(
                              113.00,
                            ),
                            width: getHorizontalSize(
                              93.00,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: getMargin(
                            left: 30,
                            top: 5,
                            right: 30,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "lbl".tr,
                                  style: TextStyle(
                                    color: ColorConstant.teal900,
                                    fontSize: getFontSize(
                                      25,
                                    ),
                                    fontFamily: 'IranNastaliq',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextSpan(
                                  text: "lbl2".tr,
                                  style: TextStyle(
                                    color: ColorConstant.lime700,
                                    fontSize: getFontSize(
                                      25,
                                    ),
                                    fontFamily: 'IranNastaliq',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextSpan(
                                  text: "msg2".tr,
                                  style: TextStyle(
                                    color: ColorConstant.teal900,
                                    fontSize: getFontSize(
                                      25,
                                    ),
                                    fontFamily: 'IranNastaliq',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      Container(
                        margin: getMargin(left: 30,right: 30,top: 10),
                        child: MyTextField(
                          caption: "lbl10".tr,
                        ),
                      ),
                      CustomButton(
                        width: 260,
                        height: 44,
                        text: "lbl33".tr,
                        margin: getMargin(
                          left: 30,
                          top: 15,
                          right: 30,
                        ),
                        // suffixWidget: Container(
                        //   margin: getMargin(
                        //     left: 6,
                        //   ),
                        //   child: CommonImageView(
                        //     svgPath: ImageConstant.imgSettings20x20,
                        //   ),
                        // ),
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: getPadding(
                            left: 29,
                            top: 23,
                            right: 29,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "msg16".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtIRANSansMobileFaNumMedium14Teal90099
                                    .copyWith(
                                  height: 1.29,
                                  // decoration: TextDecoration.underline,
                                ),
                              ),
                              SizedBox(
                                width: getHorizontalSize(10),
                              ),
                              CommonImageView(
                                svgPath: ImageConstant.imgSettings20x20,
                                color: ColorConstant.teal90099,
                                height: getVerticalSize(24),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Column(
                  children: [
                    FooterWidget(
                      text1: "msg18".tr,
                      text2: "msg17".tr,
                      onTap: (){
                        Get.toNamed(AppRoutes.accountInformationForgetPasswordPage);
                      },
                    ),
                    Padding(
                      padding: getPadding(
                        left: 29,
                        top: 30,
                        right: 29,
                        bottom: 30,
                      ),
                      child: Text(
                        "lbl5".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtIRANSansMobileFaNum12Teal9007e.copyWith(
                          height: 1.33,

                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


}
