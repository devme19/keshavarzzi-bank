import 'package:bank_keshavarzi/core/utils/color_constants.dart';
import 'package:bank_keshavarzi/core/utils/size_utils.dart';
import 'package:flutter/material.dart';

class CircleCheck extends StatefulWidget {
  const CircleCheck({Key? key}) : super(key: key);

  @override
  _CircleCheckState createState() => _CircleCheckState();
}

class _CircleCheckState extends State<CircleCheck> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          value = !value;
        });
      },
      child: Container(
        height: getVerticalSize(20),
        width: getVerticalSize(20),
        decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: ColorConstant.teal900,
              style: BorderStyle.solid,
            ),
            shape: BoxShape.circle, color:value? ColorConstant.teal900:ColorConstant.whiteA700),

        child: value
            ? Icon(
          Icons.check,
          size: getVerticalSize(15),
          color: Colors.white,
        )
            : Icon(
          Icons.check_box_outline_blank,
          size: getVerticalSize(15),
          color: ColorConstant.whiteA700,
        ),
      ),
    );
  }
}
