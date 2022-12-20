import 'package:bank_keshavarzi/presentation/routes/app_routes.dart';
import 'package:bank_keshavarzi/presentation/widgets/show_popup_menu.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/utils/color_constants.dart';
import '../../../core/utils/image_constants.dart';
import '../../../core/utils/size_utils.dart';
import '../../themes/app_decoration.dart';
import '../../themes/app_style.dart';
import '../../widgets/agreement_widget.dart';
import '../../widgets/app_bar/app_bar_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/circle_check.dart';
import '../../widgets/common_image_view.dart';
import '../../widgets/custom_button.dart';
class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  bool isAgreementShow = false;
  @override
  Widget build(BuildContext context) {
    return
      SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        appBar:
        CustomAppBar(
            height: getVerticalSize(81.00),
            leadingWidth: 54,
            centerTitle: true,
            title: isAgreementShow?
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text(
                  "lbl".tr,
                  style: AppStyle.txtIranNastaliq17,
                ),
                SizedBox(width: getSize(12.00),),
                CommonImageView(
                imagePath: ImageConstant.imgImage1,
                height: getSize(
                  36.00,
                ),
                width: getSize(
                  28.00,
                ),
              ),
            ],):Container(),
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
                  getMargin(left: 0, top: 36, right: 30, bottom: 21))
            ],
            styleType: Style.bgFillWhiteA700),
        body:
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
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
                        top: 20,
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
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: getMargin(
                        left: 30,
                        top: 40,
                        right: 30,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleCheck(),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "lbl3".tr,
                                    recognizer: TapGestureRecognizer()..onTap = () {
                                    setState(() {
                                      isAgreementShow = true;
                                    });
                                      Get.bottomSheet(
                                        isScrollControlled: true,

                                          AgreementWidget()
                                      ).then((value) {
                                        setState(() {
                                          isAgreementShow = false;
                                        });
                                      });
                                    },
                                  style: AppStyle.txtIRANSansMobileFaNumMedium12Lime700
                                ),
                                TextSpan(
                                  text: "msg4".tr,
                                  style: AppStyle.txtIRANSansMobileFaNumMedium12
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomButton(
                    onTap: (){
                      Get.toNamed(AppRoutes.accountInformationRegisterPage);
                    },
                    width: 260,
                    height: 44,
                    text: "lbl33".tr,
                    margin: getMargin(
                      left: 29,
                      top: 27,
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
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  bottom: 30,
                ),
                child: Text(
                  "lbl5".tr,
                  style: AppStyle.txtIRANSansMobileFaNum12Teal9007e
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
