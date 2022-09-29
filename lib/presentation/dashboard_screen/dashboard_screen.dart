import '../dashboard_screen/widgets/listclassname_item_widget.dart';
import '../dashboard_screen/widgets/listclassname_three_item_widget.dart';
import 'controller/dashboard_controller.dart';
import 'models/listclassname_item_model.dart';
import 'models/listclassname_three_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jennifer_chiou_s_application3/core/app_export.dart';

class DashboardScreen extends GetWidget<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.purple50,
        body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: getPadding(
                            left: 15,
                            top: 15,
                            right: 15,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgMenu,
                            height: getSize(
                              21.00,
                            ),
                            width: getSize(
                              21.00,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: getPadding(
                            left: 99,
                            top: 1,
                            right: 5,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: getHorizontalSize(
                                  159.00,
                                ),
                                margin: getMargin(
                                  top: 23,
                                  bottom: 2,
                                ),
                                child: Text(
                                  "msg_upcoming_assign".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtWorkSansRomanSemiBold25,
                                ),
                              ),
                              Container(
                                height: getVerticalSize(
                                  78.00,
                                ),
                                width: getHorizontalSize(
                                  3.00,
                                ),
                                margin: getMargin(
                                  left: 108,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.gray900,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      1.50,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: getPadding(
                            left: 25,
                            top: 32,
                            right: 25,
                          ),
                          child: Text(
                            "lbl_today".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterBold12,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: getPadding(
                            left: 15,
                            top: 6,
                            right: 15,
                          ),
                          child: Obx(
                            () => ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: controller.dashboardModelObj.value
                                  .listclassnameItemList.length,
                              itemBuilder: (context, index) {
                                ListclassnameItemModel model = controller
                                    .dashboardModelObj
                                    .value
                                    .listclassnameItemList[index];
                                return ListclassnameItemWidget(
                                  model,
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: getPadding(
                            left: 15,
                            top: 17,
                            right: 15,
                          ),
                          child: Text(
                            "lbl_add_task".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterRegular12,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: getPadding(
                            left: 25,
                            top: 19,
                            right: 25,
                          ),
                          child: Text(
                            "lbl_tomorrow".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterBold12,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: getPadding(
                            left: 15,
                            top: 3,
                            right: 15,
                          ),
                          child: Obx(
                            () => ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: controller.dashboardModelObj.value
                                  .listclassnameThreeItemList.length,
                              itemBuilder: (context, index) {
                                ListclassnameThreeItemModel model = controller
                                    .dashboardModelObj
                                    .value
                                    .listclassnameThreeItemList[index];
                                return ListclassnameThreeItemWidget(
                                  model,
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: getPadding(
                            left: 15,
                            top: 17,
                            right: 15,
                          ),
                          child: Text(
                            "lbl_add_task".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterRegular12,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: getPadding(
                            left: 25,
                            top: 13,
                            right: 25,
                          ),
                          child: Text(
                            "lbl_later".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterBold12,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: double.infinity,
                          margin: getMargin(
                            left: 15,
                            top: 7,
                            right: 15,
                          ),
                          decoration:
                              AppDecoration.outlineDeeppurpleA10089.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: getPadding(
                                    left: 14,
                                    top: 10,
                                    right: 14,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 1,
                                          bottom: 3,
                                        ),
                                        child: Text(
                                          "lbl_class_name".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterLight10,
                                        ),
                                      ),
                                      Container(
                                        height: getSize(
                                          15.00,
                                        ),
                                        width: getSize(
                                          15.00,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.deepPurpleA101,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              5.00,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 14,
                                  top: 2,
                                  right: 14,
                                ),
                                child: Text(
                                  "lbl_assignment_name".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular12,
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: getPadding(
                                    left: 14,
                                    top: 9,
                                    right: 14,
                                    bottom: 10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        padding: getPadding(
                                          left: 10,
                                          top: 3,
                                          right: 10,
                                          bottom: 3,
                                        ),
                                        decoration: AppDecoration
                                            .txtFillDeeporange100
                                            .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .txtCircleBorder9,
                                        ),
                                        child: Text(
                                          "lbl_hard".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: AppStyle.txtInterSemiBold10,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 2,
                                          bottom: 1,
                                        ),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Padding(
                                              padding: getPadding(
                                                top: 2,
                                                bottom: 1,
                                              ),
                                              child: CommonImageView(
                                                svgPath: ImageConstant.imgPlay,
                                                height: getSize(
                                                  12.00,
                                                ),
                                                width: getSize(
                                                  12.00,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 7,
                                              ),
                                              child: Text(
                                                "lbl_7_00am".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.right,
                                                style:
                                                    AppStyle.txtInterRegular12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
