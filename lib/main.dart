import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:price_controller/repositories/shopping_lists_repositories.dart';
import 'package:provider/provider.dart';
import 'price_controller_app.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(
    ChangeNotifierProvider(
      create: (context) => ShoppingListRepository(),
      child: const PriceControllerApp(),
    ),
  );
}
