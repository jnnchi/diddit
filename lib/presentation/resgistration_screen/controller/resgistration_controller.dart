import '/core/app_export.dart';
import 'package:jennifer_chiou_s_application3/presentation/resgistration_screen/models/resgistration_model.dart';
import 'package:flutter/material.dart';

class ResgistrationController extends GetxController {
  TextEditingController textFieldController = TextEditingController();

  TextEditingController textFieldOneController = TextEditingController();

  TextEditingController textFieldTwoController = TextEditingController();

  TextEditingController textFieldThreeController = TextEditingController();

  Rx<ResgistrationModel> resgistrationModelObj = ResgistrationModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    textFieldController.dispose();
    textFieldOneController.dispose();
    textFieldTwoController.dispose();
    textFieldThreeController.dispose();
  }
}
