import 'package:bank_keshavarzi/core/utils/color_constants.dart';
import 'package:bank_keshavarzi/core/utils/image_constants.dart';
import 'package:bank_keshavarzi/core/utils/size_utils.dart';
import 'package:bank_keshavarzi/presentation/themes/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'common_image_view.dart';

class ServiceItemWidget extends StatelessWidget {
  ServiceItemWidget({Key? key,this.title,this.image}) : super(key: key);
  String? title;
  Widget? image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: getHorizontalSize(125),
      height: getVerticalSize(70),
      decoration: BoxDecoration(
        color: ColorConstant.teal900,
        image: DecorationImage(
          image: AssetImage(ImageConstant.imgBg),
          fit: BoxFit.fill
        ),
        borderRadius: BorderRadius.circular(
        getHorizontalSize(
        14.00,
        )
        ),
      ),
      child:
      FittedBox(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [

             Text(title!,
              style: AppStyle.txtIRANSansMobileFaNumMedium12WhiteA700,),
              SizedBox(width: getSize(9.5),),
              image!,
              // SizedBox(width: getSize(15),),
            ],
          ),
        ),
      ),
    );
  }
}
