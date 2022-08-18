import 'package:flutter/material.dart';
import './home/price_controller_home_page.dart';
import '../widgets/styles/dafultTheme.dart';

class PriceControllerApp extends StatelessWidget {
  const PriceControllerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: PersonalColors.colorPrimaryMaterial,
        primaryColor: PersonalColors.colorSecondary(),
        backgroundColor: PersonalColors.colorSecondary()
      ),
      home: const PriceControllerHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
