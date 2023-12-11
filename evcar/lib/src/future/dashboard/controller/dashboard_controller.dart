import 'package:get/get.dart';

abstract class DashboardController extends GetxController{

}

class DashboardControllerImp extends DashboardController{

  final RxInt specialOffersCurrentIndex = 0.obs;
  final List<String> specialOffers = [
    'assets/images/cardHome.png',
    'assets/images/cardHome.png',
    'assets/images/cardHome.png',
  ];

}