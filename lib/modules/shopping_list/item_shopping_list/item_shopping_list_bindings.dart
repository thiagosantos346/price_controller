import 'package:get/get.dart';

import 'item_shopping_list_controller.dart';

class ItemShoppingListBindings implements Bindings{

  @override
  void dependencies(){
    Get.put(ItemShoppingListController());
  }

}