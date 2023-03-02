import 'package:get/get.dart';
import 'package:getx_dio/app/modules/home/controllers/home_controller.dart';
import 'package:getx_dio/app/modules/posts/posts_controller.dart';

import '../../account/controllers/account_controller.dart';
import '../controllers/dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(
      () => DashboardController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<AccountController>(
      () => AccountController(),
    );
    Get.lazyPut<PostsController>(
      () => PostsController(),
    );
  }
}
