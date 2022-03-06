import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:test_nov_29_new/routing/application_route.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ScreenUtilInit(
      designSize: const Size(392.7273, 759.2728),
      builder: () {
        return const MyApp();
      },
    ),
  );
  // runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
     builder: (context,child){
       return ScrollConfiguration(
         behavior: MyBehavior(),
         child: child!,
       );
     },

      title: 'Brail',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: ApplicationRoute().generateRoute,
      // localizationsDelegates: TranslationLocalization.localizationsDelegates,
      // locale: TranslationLocalization.locale,
      // supportedLocales: TranslationLocalization.supportedLocales,
      // fallbackLocale: TranslationLocalization.fallbackLocale,
      // translations: TranslationLocalization(),
      // initialBinding: ApplicationRoute().initialBinding(),
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}