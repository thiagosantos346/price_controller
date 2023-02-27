
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:price_controller/modules/app/app_module.dart';

import 'item_shopping_list_bindings.dart';
import 'item_shopping_list_page.dart';

class ItemShoppingListModule implements AppModule {

  @override
  List<GetPage> routes = [
    GetPage(
      name : '/shopping_list',
      page: () => const ItemShoppingListPage(),
      binding : ItemShoppingListBindings(),
    )
  ];

}
