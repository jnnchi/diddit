import '../controller/looking_assignment_controller.dart';
import 'package:get/get.dart';

class LookingAssignmentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LookingAssignmentController());
  }
}
