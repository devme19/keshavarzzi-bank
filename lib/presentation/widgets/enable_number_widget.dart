import 'package:bank_keshavarzi/core/utils/color_constants.dart';
import 'package:bank_keshavarzi/core/utils/size_utils.dart';
import 'package:bank_keshavarzi/presentation/themes/app_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EnableNumberWidget extends StatelessWidget {
  EnableNumberWidget({Key? key,required this.num,required this.title}) : super(key: key);
  String num;
  String title;
  @override
  Widget build(BuildContext context) {
    return
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            title,
            style: AppStyle.txtIRANSansMobileFaNumMedium14,
          ),
          SizedBox(width: getSize(15.00),),
          Container(
            width: getSize(30),
            height: getSize(30),
            decoration: BoxDecoration(
                color: ColorConstant.teal900,
                shape: BoxShape.circle
            ),
            child: Center(
              child: Text(
                num,
                style: AppStyle.txtIRANSansMobileFaNumMedium14WhiteA700,
              ),
            ),
          ),
        ],
      );
  }
}
