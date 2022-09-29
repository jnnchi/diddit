import '../controller/completed_tasks_controller.dart';
import 'package:get/get.dart';

class CompletedTasksBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CompletedTasksController());
  }
}
