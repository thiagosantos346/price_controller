
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:price_controller/modules/app/app_module.dart';

import 'shopping_list_bindings.dart';
import 'shopping_list_page.dart';

class ShoppingListModule implements AppModule {

  @override
  List<GetPage> routes = [
    GetPage(
      name : '/shopping_list',
      page: () => const ShoppingListPage(),
      binding : ShoppingListBindings(),
    )
  ];

}
