import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:price_controller/models/item_shopping_list_model.dart';
import 'package:price_controller/models/shopping_list_model.dart';

class ItemShoppingListRepository extends ChangeNotifier {

  late final ShoppingListModel _shoppingList;

  List<ItemShoppingListModel> _itemShoppingList = <ItemShoppingListModel>[];

  List<ItemShoppingListModel> get itemShoppingList => UnmodifiableListView(_itemShoppingList);
  get length => _itemShoppingList.length;

  ShoppingListModel get shoppingList => _shoppingList;
  //get length => _shoppingLists.length;

  saveAll( List<ItemShoppingListModel> itemShoppingList ){
    itemShoppingList.forEach((shoppingItem) {
      if( !_itemShoppingList.contains(shoppingItem) ){
        _itemShoppingList.add(shoppingItem);
      }
    });
    notifyListeners();
  }

  remove( ShoppingListModel shoppingList ){
    _itemShoppingList.remove( shoppingList );
    notifyListeners();
  }

  delete(int index){
    if( index < _itemShoppingList.length ){
      _itemShoppingList.removeAt(index);
    }
    notifyListeners();
  }

  void addShoppingList({
    required ItemShoppingListModel itemShoppingList,
  }) {
    _itemShoppingList.add(itemShoppingList);
    notifyListeners();
  }

  List<ItemShoppingListModel> getAllShoppingListItems() {
    return _itemShoppingList;
  }

  ItemShoppingListRepository() {

    addShoppingList(
      itemShoppingList: ItemShoppingListModel(
        id: length,
        refIdToShoppingList: _shoppingList.id!,
        productName : 'Sabão em pó',
        productBrand : 'Omo',
        unitTypes : UnitTypes.kg,
        price : 12.10,
        count: 1,
        obs : 'Em promossão',
        image: '',
      ),
    );
    addShoppingList(
      itemShoppingList: ItemShoppingListModel(
        id: length,
        refIdToShoppingList: _shoppingList.id!,
        productName : 'Sabão em pó',
        productBrand : 'Omo',
        unitTypes : UnitTypes.kg,
        price : 12.10,
        count: 1,
        obs : 'Em promossão',
        image: '',
      ),
    );
    addShoppingList(
      itemShoppingList: ItemShoppingListModel(
        id: length,
        refIdToShoppingList: _shoppingList.id!,
        productName : 'Sabão em pó',
        productBrand : 'Omo',
        unitTypes : UnitTypes.kg,
        price : 12.10,
        count: 1,
        obs : 'Em promossão',
        image: '',
      ),
    );
  }
}
