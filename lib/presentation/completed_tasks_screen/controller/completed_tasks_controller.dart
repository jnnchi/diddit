import '/core/app_export.dart';
import 'package:jennifer_chiou_s_application3/presentation/completed_tasks_screen/models/completed_tasks_model.dart';

class CompletedTasksController extends GetxController {
  Rx<CompletedTasksModel> completedTasksModelObj = CompletedTasksModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
