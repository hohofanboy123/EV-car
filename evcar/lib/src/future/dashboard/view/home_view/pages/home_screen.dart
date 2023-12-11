import 'package:evcar/src/config/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/special_offers.dart';

class HomePage extends StatelessWidget {

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          SpecialOffersSlider(),
          Container(color: Colors.amber, width: getWidth(100), height: 250,),
        ],
      )
    );
  }
}
