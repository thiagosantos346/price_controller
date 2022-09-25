import 'package:price_controller/models/item_shopping_list_model.dart';
import 'package:price_controller/models/shopping_list_model.dart';

class ShoppingListRepository {
  late List<ShoppingListModel> _shoppingLists;

  get shoppingLists => _shoppingLists;

  void addShoppingList({
    required ShoppingListModel shoppingList,
  }) {
    _shoppingLists.add(shoppingList);
  }

  ShoppingListRepository() {
    addShoppingList(
      shoppingList: ShoppingListModel(
        listName: 'Compra do mês',
        marketName: 'Aassaí Atacadista',
        createdAt: DateTime.now(),
        status: ShoppingListStatus.unarchived,
      ),
    );
    addShoppingList(
      shoppingList: ShoppingListModel(
        listName: 'Compra da mês',
        marketName: 'Suppermercado Tatico',
        createdAt: DateTime.now(),
        status: ShoppingListStatus.unarchived,
      ),
    );
    addShoppingList(
      shoppingList: ShoppingListModel(
        listName: 'Compra semanal',
        marketName: 'Atacadão Dia Dia',
        createdAt: DateTime.now(),
        status: ShoppingListStatus.unarchived,
      ),
    );
  }
}
