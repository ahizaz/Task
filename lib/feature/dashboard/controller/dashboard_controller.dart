import 'package:get/get.dart';

class DashboardController extends GetxController {
  var isDataView = true.obs;

  void toggleToDataView() {
    isDataView.value = true;
  }

  void toggleToRevenueView() {
    isDataView.value = false;
  }
}
