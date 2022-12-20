import 'package:bank_keshavarzi/core/utils/color_constants.dart';
import 'package:bank_keshavarzi/core/utils/size_utils.dart';
import 'package:bank_keshavarzi/presentation/themes/app_style.dart';
import 'package:flutter/material.dart';

class DisableNumberWidget extends StatelessWidget {
  DisableNumberWidget({Key? key,required this.num,required this.title}) : super(key: key);
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
            style: AppStyle.txtIRANSansMobileFaNumMedium14Gray900
          ),
          SizedBox(width: getSize(15.00),),
          Container(
            width: getSize(30),
            height: getSize(30),
            decoration: BoxDecoration(
                color: ColorConstant.whiteA700,
                shape: BoxShape.circle,
                border: Border.all(color: ColorConstant.gray900.withOpacity(0.18))
            ),
            child: Center(
              child: Text(
                num,
                style: AppStyle.txtIRANSansMobileFaNumMedium14Gray900,
              ),
            ),
          ),
        ],
      );
  }
}
