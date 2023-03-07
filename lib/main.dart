import 'package:ecoplants/routes.dart';
import 'package:ecoplants/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final token = GetStorage().read('token');
    return GetMaterialApp(
      getPages: Routes.routes,
      initialRoute: token != null ? Routes.homepage : Routes.carousel,
      title: 'EcoPlants',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Poppins',
        primarySwatch: Utils.primaryColor,
      ),
    );
  }
}
