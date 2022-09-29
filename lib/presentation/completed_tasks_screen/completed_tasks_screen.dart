import '../completed_tasks_screen/widgets/listclassname1_item_widget.dart';
import 'controller/completed_tasks_controller.dart';
import 'models/listclassname1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jennifer_chiou_s_application3/core/app_export.dart';
import 'package:jennifer_chiou_s_application3/widgets/custom_button.dart';
import 'package:jennifer_chiou_s_application3/widgets/custom_icon_button.dart';

class CompletedTasksScreen extends GetWidget<CompletedTasksController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.purple50,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
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
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: getHorizontalSize(
                      159.00,
                    ),
                    margin: getMargin(
                      left: 99,
                      top: 23,
                      right: 99,
                    ),
                    child: Text(
                      "msg_completed_assig".tr,
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtWorkSansRomanSemiBold25,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 25,
                      top: 34,
                      right: 25,
                    ),
                    child: Text(
                      "lbl_yesterday".tr,
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
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: controller.completedTasksModelObj.value
                            .listclassname1ItemList.length,
                        itemBuilder: (context, index) {
                          Listclassname1ItemModel model = controller
                              .completedTasksModelObj
                              .value
                              .listclassname1ItemList[index];
                          return Listclassname1ItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 25,
                      top: 26,
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
                  child: Container(
                    width: double.infinity,
                    margin: getMargin(
                      left: 15,
                      top: 2,
                      right: 15,
                    ),
                    decoration: AppDecoration.outlineDeeppurpleA100891.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                    style: AppStyle.txtInterLight10RedA200,
                                  ),
                                ),
                                CustomIconButton(
                                  height: 15,
                                  width: 15,
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgCheckmark,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 14,
                            top: 5,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                CustomButton(
                                  width: 47,
                                  text: "lbl_okay".tr,
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 3,
                                    bottom: 2,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 1,
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
                                          left: 3,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          "lbl_11_59pm".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterRegular12,
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
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 27,
                      top: 19,
                      right: 27,
                      bottom: 20,
                    ),
                    child: Text(
                      "lbl_tomorrow".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterBold12,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
