import 'package:get/get.dart';
import 'package:price_controller/models/item_shopping_list_model.dart';
import 'package:price_controller/models/shopping_list_model.dart';

class ShoppingListRepository {
  late List<ShoppingListModel> _shoppingLists;

  get shoppingLists => _shoppingLists;
  get length => _shoppingLists.length;

  void delete(int index){

    if( index < _shoppingLists.length ){
      _shoppingLists.removeAt(index);
    }

  }

  void addShoppingList({
    required ShoppingListModel shoppingList,
  }) {
    _shoppingLists.add(shoppingList);
  }

  List<ShoppingListModel> getAllShoppingListItems() {
    return _shoppingLists;
  }

  ShoppingListRepository() {

    _shoppingLists = <ShoppingListModel>[];

    addShoppingList(
      shoppingList: ShoppingListModel(
        listName: 'Compra do mês',
        marketName: 'Aassaí Atacadista',
        createdAt: DateTime.now(),
        status: ShoppingListStatus.unarchived,
        totalValue: 100.00,
      ),
    );
    addShoppingList(
      shoppingList: ShoppingListModel(
        listName: 'Compra da mês',
        marketName: 'Suppermercado Tatico',
        createdAt: DateTime.now(),
        status: ShoppingListStatus.unarchived,
        totalValue: 300.00,
      ),
    );
    addShoppingList(
      shoppingList: ShoppingListModel(
        listName: 'Compra semanal',
        marketName: 'Atacadão Dia Dia',
        createdAt: DateTime.now(),
        status: ShoppingListStatus.unarchived,
        totalValue: 1100.00,
      ),
    );
  }
}
