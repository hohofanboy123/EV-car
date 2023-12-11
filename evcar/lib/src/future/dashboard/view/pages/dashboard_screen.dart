import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../controller/dashboard_controller.dart';
import '../home_view/pages/home_screen.dart';
import '../widgets/custom_appbar.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  
  final DashboardControllerImp controller = Get.put(DashboardControllerImp());
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: Column(
          children: [
            CustomAppBar(),
            HomePage(),
          ],
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: const Color(0xFF161E21), // Background color
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          unselectedFontSize: 14,
          selectedItemColor: const Color(0xFF00A8A8), // Selected item color
          unselectedItemColor: Colors.white, // Unselected item color
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: _selectedIndex == 0 ? SvgPicture.asset('assets/icons/selectedHome.svg') : SvgPicture.asset('assets/icons/home.svg'),
              label: 'الرئيسية',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 1 ? SvgPicture.asset('assets/icons/selectedTools.svg') : SvgPicture.asset('assets/icons/tools.svg'),
              label: 'الصيانة',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 2 ? SvgPicture.asset('assets/icons/selectedCharge.svg') : SvgPicture.asset('assets/icons/charge.svg'),
              label: 'الشحن',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 3 ? SvgPicture.asset('assets/icons/selectedCar.svg') : SvgPicture.asset('assets/icons/car.svg'),
              label: 'المركبات',
            ),
          ],
        ),
      ),
    );
  }
}
