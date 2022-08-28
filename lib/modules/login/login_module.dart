
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'package:price_controller/modules/app/app_module.dart';

import 'login_bindings.dart';
import 'login_page.dart';


class LoginModule implements AppModule {

  @override
  List<GetPage> routes = [
    GetPage(
      name : '/login',
      page: () => LoginPage(),
      binding : LoginBindings(),
    )
  ];

}
