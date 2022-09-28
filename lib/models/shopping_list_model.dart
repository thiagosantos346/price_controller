
import 'dart:ffi';
import 'package:location/location.dart';
import 'item_shopping_list_model.dart';

enum ShoppingListStatus{
  archived,
  deleted,
  using,
  unarchived,
}

class ShoppingListModel {

  late String listName;
  late String marketName;
  late DateTime createdAt;
  late ShoppingListStatus status;
  late double totalValue;
  late Location? marketLocation;
  late List<ItemShoppingListModel>? items;

  ShoppingListModel({
    required this.listName,
    required this.marketName,
    required this.createdAt,
    required this.status,
    required this.totalValue,
    this.marketLocation,
    this.items,
  });

  String statusToString(){

    switch(status){
      case  ShoppingListStatus.unarchived : {
        return 'Desarquivado';
      }
      break;
      case  ShoppingListStatus.archived : {
        return 'Arquivado';
      }
      break;
      case  ShoppingListStatus.deleted : {
        return 'Removido';
      }
      break;
      case  ShoppingListStatus.using : {
        return 'Em uso';
      }
      break;
      default : {
        return 'Desconhecido';
      }
      break;

    }

  }

}