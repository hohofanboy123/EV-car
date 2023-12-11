import 'package:evcar/src/config/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/dashboard_controller.dart';

class SpecialOffersSlider extends StatelessWidget {

  const SpecialOffersSlider({super.key,});
  
  @override
  Widget build(BuildContext context) {
    DashboardControllerImp controller = Get.find<DashboardControllerImp>();
    return SizedBox(
      height: getHeight(250),
      width: double.infinity,
      child: Stack(
        children: [
          PageView.builder(
            itemCount: controller.specialOffers.length,
            onPageChanged: (index) {
              controller.specialOffersCurrentIndex.value = index;
            },
            itemBuilder: (context, index) {
              return Container(
                height: getHeight(250),
                width: getWidth(360),
                margin: EdgeInsets.symmetric(horizontal: getWidth(20)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(image: AssetImage(controller.specialOffers[0]))
                )
              );
            }
          ),
        ],
      ),
    );
  }
}