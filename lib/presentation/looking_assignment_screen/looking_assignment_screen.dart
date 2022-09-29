import 'controller/looking_assignment_controller.dart';
import 'package:flutter/material.dart';
import 'package:jennifer_chiou_s_application3/core/app_export.dart';
import 'package:jennifer_chiou_s_application3/widgets/custom_button.dart';

class LookingAssignmentScreen extends GetWidget<LookingAssignmentController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: size.width,
                    margin: getMargin(
                      top: 11,
                    ),
                    child: Padding(
                      padding: getPadding(
                        left: 15,
                        right: 28,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 4,
                              bottom: 16,
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
                          Padding(
                            padding: getPadding(
                              top: 27,
                            ),
                            child: Text(
                              "lbl_class_name".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterLight15,
                            ),
                          ),
                          Container(
                            height: getVerticalSize(
                              30.00,
                            ),
                            width: getHorizontalSize(
                              21.00,
                            ),
                            margin: getMargin(
                              bottom: 12,
                            ),
                            child: Stack(
                              alignment: Alignment.topLeft,
                              children: [
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 10,
                                      top: 10,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgEdit,
                                      height: getSize(
                                        20.00,
                                      ),
                                      width: getSize(
                                        20.00,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: getPadding(
                                      right: 10,
                                      bottom: 10,
                                    ),
                                    child: Text(
                                      "lbl_edit".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterBold10,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 44,
                    top: 24,
                    right: 44,
                  ),
                  child: Text(
                    "lbl_assignment_name".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtWorkSansRomanRegular25,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 44,
                    top: 26,
                    right: 44,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomButton(
                        width: 47,
                        text: "lbl_hard".tr,
                        variant: ButtonVariant.FillDeeporange100,
                        fontStyle: ButtonFontStyle.InterSemiBold10,
                      ),
                      Padding(
                        padding: getPadding(
                          left: 9,
                          top: 2,
                          bottom: 4,
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
                          top: 1,
                          bottom: 4,
                        ),
                        child: Text(
                          "lbl_7_00am".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterRegular12,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: getVerticalSize(
                    1.00,
                  ),
                  width: size.width,
                  margin: getMargin(
                    top: 42,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.deepPurpleA10089,
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    277.00,
                  ),
                  margin: getMargin(
                    left: 44,
                    top: 41,
                    right: 44,
                  ),
                  child: Text(
                    "msg_teacher_instruc".tr,
                    maxLines: null,
                    textAlign: TextAlign.center,
                    style: AppStyle.txtInterRegular15,
                  ),
                ),
                CustomButton(
                  width: 266,
                  text: "lbl_mark_as_done".tr,
                  margin: getMargin(
                    left: 44,
                    top: 140,
                    right: 44,
                    bottom: 20,
                  ),
                  variant: ButtonVariant.OutlineBlack90019,
                  shape: ButtonShape.CircleBorder24,
                  padding: ButtonPadding.PaddingAll19,
                  fontStyle: ButtonFontStyle.WorkSansRomanSemiBold13,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
