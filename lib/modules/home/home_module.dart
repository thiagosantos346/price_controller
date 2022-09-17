
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'package:price_controller/modules/app/app_module.dart';
import 'package:price_controller/modules/home/home_page.dart';

import 'home_bindings.dart';
import 'home_bindings.dart';

class HomeModule  implements AppModule{

  @override
  List<GetPage> routes = [
    GetPage(
        name: '/home',
        page: () => const HomePage(),
        binding: HomeBindings(),
    )
  ];

}