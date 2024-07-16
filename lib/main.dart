import 'package:flutter/material.dart';
import 'package:free_swingers/helpers/dependencies.dart' as dep;
import 'package:free_swingers/routes/routes.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dep.init();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Free Swingers',
      getPages: AppRoutes.routes,
      initialRoute: AppRoutes.getHomepage(),
    );
  }
}


