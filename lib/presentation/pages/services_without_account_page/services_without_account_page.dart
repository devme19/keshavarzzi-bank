import 'package:bank_keshavarzi/presentation/themes/app_style.dart';
import 'package:bank_keshavarzi/presentation/widgets/custom_button.dart';
import 'package:bank_keshavarzi/presentation/widgets/service_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/utils/color_constants.dart';
import '../../../core/utils/image_constants.dart';
import '../../../core/utils/size_utils.dart';
import '../../widgets/app_bar/app_bar_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/common_image_view.dart';

class ServicesWithoutAccountPage extends StatelessWidget {
  const ServicesWithoutAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: ColorConstant.whiteA700,
        appBar:
        CustomAppBar(
            height: getVerticalSize(81.00),
            title: Text("msg14".tr,
                style: AppStyle.txtIRANSansMobileFaNumMedium14Lime700),
            centerTitle: true,
            leadingWidth: 65,
            actions: [
              AppbarImage(
                  onTap: ()=> Get.back(),
                  height: getSize(24.00),
                  width: getSize(24.00),
                  svgPath: ImageConstant.imgArrowright,
                  margin: getMargin(right: 25, top: 20, bottom: 21)),
            ],
            styleType: Style.bgFillWhiteA700),
        body:
        Container(
          margin: getMargin(right: 15,left: 15),
          child:
          Column(
            children: [
              Expanded(
                child: GridView.count(
                  primary: false,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  childAspectRatio: 1.5,
                  children: <Widget>[

                    ServiceItemWidget(
                      title: "lbl25".tr,
                      image: CommonImageView(
                        svgPath: ImageConstant.imgGlobe,
                        height: getSize(
                          23,
                        ),
                        width: getSize(
                          23,
                        ),
                      ),
                    ),
                    ServiceItemWidget(
                      title: "lbl26".tr,
                      image: CommonImageView(
                        svgPath: ImageConstant.imgPlus,
                        height: getSize(
                          23,
                        ),
                        width: getSize(
                          23,
                        ),
                      ),
                    ),
                    ServiceItemWidget(
                      title: "lbl27".tr,
                      image: CommonImageView(
                        svgPath: ImageConstant.imgLocation,
                        height: getSize(
                          23,
                        ),
                        width: getSize(
                          23,
                        ),
                      ),
                    ),
                    ServiceItemWidget(
                      title: "lbl28".tr,
                      image: CommonImageView(
                        svgPath: ImageConstant.imgVuesaxboldbarcode,
                        height: getSize(
                          23,
                        ),
                        width: getSize(
                          23,
                        ),
                      ),
                    ),
                    ServiceItemWidget(
                      title: "lbl29".tr,
                      image: CommonImageView(
                        svgPath: ImageConstant.imgUser,
                        height: getSize(
                          23,
                        ),
                        width: getSize(
                          23,
                        ),
                      ),
                    ),
                    ServiceItemWidget(
                      title: "lbl30".tr,
                      image: CommonImageView(
                        svgPath: ImageConstant.imgCar,
                        height: getSize(
                          23,
                        ),
                        width: getSize(
                          23,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: getSize(50),),
              CustomButton(
                text: 'msg15'.tr,
                height: 44,
                width: 260,
                suffixWidget: CommonImageView(
                  svgPath: ImageConstant.imgInfo,
                  height: getSize(15),
                  width: getSize(15),
                ),
              ),
              SizedBox(height: getSize(50),)
            ],
          ),
        )
      ),
    );
  }
}
