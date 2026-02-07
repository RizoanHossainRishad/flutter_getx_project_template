import 'package:flutter/material.dart';
import 'package:flutter_getx_project_template/utils/app_log.dart';
import 'package:get/get.dart';
import 'package:flutter_getx_project_template/routes/app_routes.dart';
import 'package:flutter_getx_project_template/services/storage_services/get_storage_services.dart';
import 'package:flutter_getx_project_template/utils/error_log.dart';

class SplashScreenController extends GetxController {
  GetStorageServices storageServices = GetStorageServices.instance;
  RxDouble animation = 0.0.obs;
  RxDouble animation2 = 0.0.obs;

  Future<void> onInitialDataLoadScreen() async {
    try {
      // 1. Start animations after a tiny delay to ensure build is complete
      await Future.delayed(const Duration(milliseconds: 100));
      animation.value = 1.0;
      animation2.value = 1.0;

      // 2. Wait for your minimum splash duration (e.g., 3 seconds)
      // This ensures the user actually sees your brand/logo
      await Future.delayed(const Duration(seconds: 3));

      // 3. Check storage
      final bool hasSeenOnboard = storageServices.getOnboardScreen();
      final String token = storageServices.getToken();

    /*  // 4. Determine destination
      if (hasSeenOnboard) {
        // Typically, if they've seen onboarding, you check if they are logged in
        if (token.isNotEmpty) {
          Get.offAllNamed(AppRoutes.instance.appNavigationScreen);
          storageServices.setOnboardScreen();
        } else {
          Get.offAllNamed(AppRoutes.instance.wellCome);
        }
      } else {
        Get.offAllNamed(AppRoutes.instance.wellCome);
      }*/


      if (!hasSeenOnboard) {
        AppLogColor.warning(hasSeenOnboard.toString());
        Get.offAllNamed(AppRoutes.instance.wellCome);
        storageServices.setOnboardScreen();
        AppLogColor.warning(storageServices.getOnboardScreen().toString());
      } else {
        AppLogColor.warning(storageServices.getOnboardScreen().toString());
        Get.offAllNamed(AppRoutes.instance.demoscreen);
      }
      /*AppLogColor.warning(hasSeenOnboard.toString());
      storageServices.setOnboardScreen();
      AppLogColor.warning(storageServices.getOnboardScreen().toString());*/



      /*Get.offAllNamed(AppRoutes.instance.demoscreen);*/
    } catch (e) {
      errorLog("onInitialDataLoadScreen", e);
      // Ensure we navigate to error screen if anything blows up
      Get.offAllNamed(AppRoutes.instance.errorScreen);
    }
  }

  @override
  void onInit() {
    super.onInit();
    onInitialDataLoadScreen();
  }
}