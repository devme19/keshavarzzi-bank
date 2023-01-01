import 'package:bank_keshavarzi/presentation/widgets/disable_number_widget.dart';
import 'package:bank_keshavarzi/presentation/widgets/footer_widget.dart';
import 'package:bank_keshavarzi/presentation/widgets/my_text_field.dart';
import 'package:bank_keshavarzi/presentation/widgets/enable_number_widget.dart';
import 'package:bank_keshavarzi/presentation/widgets/radio_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/utils/color_constants.dart';
import '../../../core/utils/image_constants.dart';
import '../../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../themes/app_style.dart';
import '../../widgets/app_bar/app_bar_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/common_image_view.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/show_popup_menu.dart';

class PasswordPage extends StatefulWidget {
  const PasswordPage({Key? key}) : super(key: key);

  @override
  State<PasswordPage> createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  bool newPassword = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
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
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: getMargin(top: 10,right: 30,left: 30),
                child: Column(
                  children: [
                    EnableNumberWidget(num: "1",title: "lbl15".tr,),
                    SizedBox(height: getSize(15),),
                    EnableNumberWidget(num: "2",title: "lbl8".tr,),
                    SizedBox(height: getSize(15),),
                    EnableNumberWidget(num: "3",title: "lbl10".tr,),
                    SizedBox(height: getSize(15),),
                    Padding(
                      padding: getPadding(right: 38),
                      child: Text(
                        "msg6".tr,
                        textAlign: TextAlign.right,
                        textDirection: TextDirection.rtl,

                        style: AppStyle.txtIRANSansMobileFaNumMedium12Gray900,
                      ),
                    ),
                    SizedBox(height: getSize(15),),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(right: 12),
                child: SizedBox(
                  height: 80,
                  child: RadioWidget(
                    items: ["msg7".tr,"msg8".tr],
                    callBack: (value){
                      print(value);
                      if(value == "msg8".tr){
                        newPassword = true;
                      }
                      else{
                        newPassword = false;
                      }
                      setState(() {
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: getSize(19),),
              Visibility(
                visible: newPassword?true:false,
                child:
                Padding(
                  padding: getPadding(right: 30,left: 30),
                  child: Column(children: [
                    MyTextField(caption: "lbl14".tr),
                    SizedBox(height: getSize(10),),
                    MyTextField(caption: "msg9".tr),
                  ],),
                ),
              ),
              Container(
                margin: getMargin(top: 15,right: 30,left: 30),
                child: CustomButton(
                  onTap: (){
                    // Get.toNamed(AppRoutes.accountInformationRegisterPage);
                  },
                  width: 260,
                  height: 44,
                  text: "lbl13".tr,
                  // margin: getMargin(
                  //   left: 29,
                  //   top: 27,
                  //   right: 30,
                  // ),
                  alignment: Alignment.center,
                ),
              ),
              SizedBox(height: getSize(27),),
            ],
          ),
        ),
      ),
    );
  }
}
