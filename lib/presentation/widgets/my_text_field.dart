import 'package:bank_keshavarzi/presentation/themes/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';

import '../../core/utils/color_constants.dart';
import '../../core/utils/size_utils.dart';
class MyTextField extends StatelessWidget {
  TextEditingController? controller;
  String? validationText;
  FocusScopeNode? node;
  bool obscureText;
  TextAlign textAlign;
  String? caption;
  MyTextField({
    Key? key,
    this.controller,
    this.validationText,
    this.node,
    this.obscureText = false,
    this.textAlign = TextAlign.center,
    this.caption
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  caption!,
                  textAlign: TextAlign.end,
                  style: AppStyle.txtIRANSansMobileFaNum12,
                ),
              ),
            ],
          ),
          SizedBox(height: getSize(8),),
          SizedBox(
            height: getSize(41),
            child: TextFormField(
            style: TextStyle(color: ColorConstant.teal900),
            textAlign: textAlign,
            controller: controller,
            obscureText: obscureText,
            textInputAction: TextInputAction.next,
            showCursor: false,
            validator: (value){
              if(value!.isEmpty){
                return validationText;
              }
              else {
                return null;
              }
            },
            onEditingComplete: () {
              if(node != null){
                node!.nextFocus();
              }else{
                Get.focusScope!.unfocus();
              }
            },
            decoration: InputDecoration(
                filled: true,
                fillColor: ColorConstant.lime700.withOpacity(0.15),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        7.00,
                      ),
                    ),
                    borderSide: BorderSide.none

                ),
                border:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        7.00,
                      ),
                    ),
                    borderSide:
                    BorderSide.none
                )
            ),
    ),
          ),
        ],
      );
  }
}
