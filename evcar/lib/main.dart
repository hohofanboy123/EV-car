import 'package:evcar/src/config/routes/routes.dart';
import 'package:evcar/src/config/size_config.dart';
import 'package:evcar/src/config/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: const Locale('ar', 'AR'),
      title: 'Orange E-commerce',
      theme: AppTheme.light,
      getPages: AppRoutes.routes,
    );
  }
}
