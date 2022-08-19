import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import './home/price_controller_home_page.dart';
import '../widgets/styles/dafultTheme.dart';

class PriceControllerApp extends StatelessWidget {
  const PriceControllerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Price Controller',
      debugShowCheckedModeBanner: false,
      locale: const Locale('pt', 'BR'),
      theme: ThemeData(
        primarySwatch: PersonalColors.colorPrimaryMaterial,
        primaryColor: PersonalColors.colorSecondary(),
        backgroundColor: PersonalColors.colorSecondary()
      ),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('pt', 'BR'),
      ],
      home: const PriceControllerHomePage(title: 'Price Controller'),
    );
  }
}
