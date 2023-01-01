import 'package:bank_keshavarzi/core/utils/color_constants.dart';
import 'package:bank_keshavarzi/core/utils/size_utils.dart';
import 'package:bank_keshavarzi/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../themes/app_style.dart';

class AgreementWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
       Container(
         margin: getMargin(
             top: 120 - statusBar!.toDouble()
         ),
         decoration: BoxDecoration(
           color: ColorConstant.whiteA700,
           borderRadius: const BorderRadius.only(
             topLeft: Radius.circular(20.0),
             topRight: Radius.circular(20.0),
           ),
         ),
         child: Column(
          children: [
            SizedBox(height: getVerticalSize(13),),
            Container(
              width: getHorizontalSize(50),
              height: getVerticalSize(3),
              decoration: BoxDecoration(
                color: ColorConstant.gray300,
                borderRadius: BorderRadius.circular(10)
              ),
            ),

            Expanded(
              child: Container(
                margin: getMargin(
                  top: 42,
                  right: 30,
                  left: 30
                ),
                child:
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                              "lbl3".tr,
                              style: AppStyle.txtIRANSansMobileFaNumMedium14
                          ),
                        ],
                      ),
                      SizedBox(height: getVerticalSize(17),),
                      Text(
                          "lbl35".tr,
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.justify,

                          style: AppStyle.txtIRANSansMobileFaNum12Height2Gray900
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: ColorConstant.whiteA700,
                boxShadow: [
                  BoxShadow(
                    color: ColorConstant.gray300,
                    spreadRadius: 5,
                    blurRadius: 10,
                    offset: Offset(0, 5), // changes position of shadow
                  ),
                ],
              ),
              child: CustomButton(
                onTap: ()=>Get.back(),
                width: 260,
                height: 44,
                text: "lbl24".tr,
                margin: getMargin(
                  left: 30,
                  top: 25,
                  right: 30,
                  bottom: 30
                ),
                alignment: Alignment.center,
              ),
            ),
          ],

    ),
       );
  }
}
