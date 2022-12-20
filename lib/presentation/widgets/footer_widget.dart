import 'package:flutter/material.dart';
import '../../core/utils/size_utils.dart';
import '../themes/app_decoration.dart';
import '../themes/app_style.dart';

class FooterWidget extends StatelessWidget {
  FooterWidget({Key? key,this.text1,this.text2,this.onTap}) : super(key: key);
  String? text1,text2;
  Function? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillTeal9005e,
      height: getSize(36),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          InkWell(
            onTap: (){
              onTap!();
            },
            child: Padding(
              padding: getPadding(
                left: 9,
                top: 9,
                bottom: 10,
              ),
              child: Text(
                text2!,
                overflow: TextOverflow.ellipsis,
                style:
                AppStyle.txtIRANSansMobileFaNumMedium12Lime700
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 8,

            ),
            child: Text(
              text1!,
              overflow: TextOverflow.ellipsis,
              style: AppStyle.txtIRANSansMobileFaNum12Teal90099,
            ),
          ),
        ],
      ),
    );
  }
}
