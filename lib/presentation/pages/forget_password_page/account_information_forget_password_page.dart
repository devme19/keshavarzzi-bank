import 'package:bank_keshavarzi/presentation/widgets/disable_number_widget.dart';
import 'package:bank_keshavarzi/presentation/widgets/footer_widget.dart';
import 'package:bank_keshavarzi/presentation/widgets/my_text_field.dart';
import 'package:bank_keshavarzi/presentation/widgets/enable_number_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/utils/color_constants.dart';
import '../../../core/utils/image_constants.dart';
import '../../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../themes/app_decoration.dart';
import '../../themes/app_style.dart';
import '../../widgets/app_bar/app_bar_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/common_image_view.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/show_popup_menu.dart';

class AccountInformationForgetPasswordPage extends StatelessWidget {
  const AccountInformationForgetPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        appBar:
        CustomAppBar(
            height: getVerticalSize(81.00),
            leadingWidth: 65,
            centerTitle: true,
            title:
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
              ],),
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
        SingleChildScrollView(
          child:
          Column(
            children: [
              Container(
                margin: getMargin(top: 10,right: 30,left: 30),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    EnableNumberWidget(num: "1",title: "lbl15".tr,),
                    SizedBox(height: getSize(15),),
                    MyTextField(caption: "lbl20".tr,),
                    SizedBox(height: getSize(10),),
                    MyTextField(caption: "lbl21".tr,),
                    SizedBox(height: getSize(10),),
                    MyTextField(caption: "lbl22".tr,),
                    SizedBox(height: getSize(15),),
                    CustomButton(
                      onTap: (){
                        Get.toNamed(AppRoutes.otpVerificationForgetPasswordPage);
                      },
                      width: 260,
                      height: 44,
                      text: "lbl18".tr,
                      // margin: getMargin(
                      //   left: 29,
                      //   top: 27,
                      //   right: 30,
                      // ),
                      alignment: Alignment.center,
                    ),
                    SizedBox(height: getSize(21),),
                    DisableNumberWidget(num: "2",title: "lbl8".tr,),
                    SizedBox(height: getSize(10),),
                    DisableNumberWidget(num: "3",title: "lbl14".tr,),
                    SizedBox(height: getSize(70),),
                  ],
                ),
              ),
              // Container(
              //   margin: getMargin(
              //       top: 18,
              //       bottom: 25
              //   ),
              //   child: FooterWidget(
              //     text1: "msg12".tr,
              //     text2: "lbl23".tr,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
