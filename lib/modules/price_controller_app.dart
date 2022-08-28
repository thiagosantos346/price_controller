
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

import 'package:price_controller/modules/login/login_module.dart';

import 'package:price_controller/modules/home/price_controller_home_page.dart';
import 'package:price_controller/modules/login/login_module.dart';
import 'package:price_controller/widgets/styles/defaultTheme.dart';

class PriceControllerApp extends StatelessWidget {
  const PriceControllerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Price Controller',
      debugShowCheckedModeBanner: false,
      locale: const Locale('pt', 'BR'),
      theme: ThemeData(
        primarySwatch: PersonalColors.colorPrimaryMaterial,
        primaryColor: PersonalColors.colorSecondary,
        backgroundColor: PersonalColors.colorSecondary
      ),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('pt', 'BR'),
      ],
      getPages: [
        ...LoginModule().routes,
      ],
      initialRoute: '/login',
      home: const PriceControllerHomePage(title: 'Price Controller'),
    );
  }
}
