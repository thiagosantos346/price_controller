import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:price_controller/models/item_shopping_list_model.dart';
import 'package:price_controller/models/shopping_list_model.dart';

class ShoppingListRepository extends ChangeNotifier {

  List<ShoppingListModel> _shoppingLists = <ShoppingListModel>[];

  List<ShoppingListModel> get shoppingLists => UnmodifiableListView(_shoppingLists);
  get length => _shoppingLists.length;

  saveAll( List<ShoppingListModel> shoppingList ){
    shoppingList.forEach((shoppingItem) {
      if( !_shoppingLists.contains(shoppingItem) ){
        _shoppingLists.add(shoppingItem);
      }
    });
    notifyListeners();
  }

  remove( ShoppingListModel shoppingList ){
    _shoppingLists.remove( shoppingList );
    notifyListeners();
  }

  delete(int index){
    if( index < _shoppingLists.length ){
      _shoppingLists.removeAt(index);
    }
    notifyListeners();
  }

  void addShoppingList({
    required ShoppingListModel shoppingList,
  }) {
    _shoppingLists.add(shoppingList);
    notifyListeners();
  }

  List<ShoppingListModel> getAllShoppingListItems() {
    return _shoppingLists;
  }

  ShoppingListRepository() {

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
