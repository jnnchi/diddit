import 'controller/resgistration_controller.dart';
import 'package:flutter/material.dart';
import 'package:jennifer_chiou_s_application3/core/app_export.dart';
import 'package:jennifer_chiou_s_application3/core/utils/validation_functions.dart';
import 'package:jennifer_chiou_s_application3/widgets/custom_button.dart';
import 'package:jennifer_chiou_s_application3/widgets/custom_text_form_field.dart';

class ResgistrationScreen extends GetWidget<ResgistrationController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: getPadding(
                      left: 25,
                      top: 156,
                      right: 25,
                    ),
                    child: Text(
                      "lbl_welcome_onboard".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtWorkSansRomanRegular20,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 25,
                      top: 20,
                      right: 25,
                    ),
                    child: Text(
                      "msg_let_s_turn_your".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterRegular15,
                    ),
                  ),
                  CustomTextFormField(
                    width: 324,
                    focusNode: FocusNode(),
                    controller: controller.textFieldController,
                    hintText: "msg_enter_your_full".tr,
                    margin: getMargin(
                      left: 25,
                      top: 50,
                      right: 25,
                    ),
                    validator: (value) {
                      if (!isText(value)) {
                        return "Please enter valid text";
                      }
                      return null;
                    },
                  ),
                  CustomTextFormField(
                    width: 324,
                    focusNode: FocusNode(),
                    controller: controller.textFieldOneController,
                    hintText: "msg_enter_your_emai".tr,
                    margin: getMargin(
                      left: 25,
                      top: 26,
                      right: 25,
                    ),
                    validator: (value) {
                      if (value == null ||
                          (!isValidEmail(value, isRequired: true))) {
                        return "Please enter valid email";
                      }
                      return null;
                    },
                  ),
                  CustomTextFormField(
                    width: 324,
                    focusNode: FocusNode(),
                    controller: controller.textFieldTwoController,
                    hintText: "msg_enter_your_pass".tr,
                    margin: getMargin(
                      left: 25,
                      top: 26,
                      right: 25,
                    ),
                    validator: (value) {
                      if (value == null ||
                          (!isValidPassword(value, isRequired: true))) {
                        return "Please enter valid password";
                      }
                      return null;
                    },
                    isObscureText: true,
                  ),
                  CustomTextFormField(
                    width: 324,
                    focusNode: FocusNode(),
                    controller: controller.textFieldThreeController,
                    hintText: "msg_confirm_your_pa".tr,
                    margin: getMargin(
                      left: 25,
                      top: 26,
                      right: 25,
                    ),
                    textInputAction: TextInputAction.done,
                    validator: (value) {
                      if (value == null ||
                          (!isValidPassword(value, isRequired: true))) {
                        return "Please enter valid password";
                      }
                      return null;
                    },
                    isObscureText: true,
                  ),
                  CustomButton(
                    width: 325,
                    text: "lbl_register".tr,
                    margin: getMargin(
                      left: 25,
                      top: 63,
                      right: 25,
                    ),
                    variant: ButtonVariant.FillDeeppurpleA100,
                    shape: ButtonShape.Square,
                    padding: ButtonPadding.PaddingAll19,
                    fontStyle: ButtonFontStyle.WorkSansRomanSemiBold13,
                  ),
                  Container(
                    margin: getMargin(
                      left: 25,
                      top: 18,
                      right: 25,
                      bottom: 20,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "msg_already_have_an2".tr,
                            style: TextStyle(
                              color: ColorConstant.black900,
                              fontSize: getFontSize(
                                12,
                              ),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: "lbl_sign_in".tr,
                            style: TextStyle(
                              color: ColorConstant.purple800,
                              fontSize: getFontSize(
                                12,
                              ),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
