import 'package:bank_keshavarzi/core/utils/size_utils.dart';
import 'package:flutter/material.dart';

import 'common_image_view.dart';

class ServiceItemWidget extends StatelessWidget {
  ServiceItemWidget({Key? key,this.title,this.imgPath}) : super(key: key);
  String? title,imgPath;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: getHorizontalSize(125),
      height: getHorizontalSize(70),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
        getHorizontalSize(
        14.00,
        )
        ),
      ),
      child: Row(
        children: [
          CommonImageView(

          )
        ],
      ),
    );
  }
}
