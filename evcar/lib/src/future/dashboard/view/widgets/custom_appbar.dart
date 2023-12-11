import 'package:evcar/src/config/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getWidth(30), vertical: getHeight(30)),
      child: Row(
        children: [
          SizedBox(
            height: getHeight(50),
            width: getHeight(50),
            child: Image.asset(
              'assets/images/avatar.png',
            ),
          ),
          SizedBox(width: getWidth(10)),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("صباح الخير,"),
              Text("مسلم العبسي", style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
          const Spacer(),
          SvgPicture.asset(
            "assets/icons/favorite.svg",
            height: getHeight(30),
          ),
          const SizedBox(width: 10),
          SvgPicture.asset(
            "assets/icons/notifications.svg",
            height: getHeight(30),
          ),
        ],
      ),
    );
  }
}
