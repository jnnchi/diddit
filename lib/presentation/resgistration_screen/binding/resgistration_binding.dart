import '../controller/resgistration_controller.dart';
import 'package:get/get.dart';

class ResgistrationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ResgistrationController());
  }
}
