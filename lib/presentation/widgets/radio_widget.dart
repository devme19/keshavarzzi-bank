import 'package:bank_keshavarzi/core/utils/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../themes/app_style.dart';
 class RadioWidget extends StatefulWidget {
   RadioWidget({Key? key,this.items,this.callBack}) : super(key: key);
   List<String>? items;
   Function(String)? callBack;
   @override
   _RadioWidgetState createState() => _RadioWidgetState();
 }

 class _RadioWidgetState extends State<RadioWidget> {
   String? radioValue;
   @override
   Widget build(BuildContext context) {
     return
       Column(
         children: [
           ...createRadios()
         ]
       );
   }
   List<Widget> createRadios(){
     List<Widget> mItems = [];
     for(String item in widget.items!){
       mItems.add(
         Expanded(
           child: RadioListTile(
             controlAffinity: ListTileControlAffinity.trailing,
             title: Text(
               item,
               textAlign: TextAlign.end,
               style: radioValue == item?
               AppStyle.txtIRANSansMobileFaNumBold12:
               AppStyle.txtIRANSansMobileFaNum12W400Gray900
             ),
             activeColor: ColorConstant.teal900,
             value: item,
             groupValue: radioValue,
             onChanged: (value){
               setState(() {
                 radioValue = value.toString();
                 widget.callBack!(radioValue!);
               });
             },
           ),
         ),
       );
     }
     return mItems;
   }
 }
