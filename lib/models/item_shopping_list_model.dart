
import 'dart:ffi';

enum UnitTypes{
  mg/*Miligramas*/,
  g/*Gramas*/,
  kg/*Quilogramas*/,
  ml/*Milelitro*/,
  l/*Litro*/,
  un/*Unidade*/,
  bx/*Caixa*/,
}

class ItemShoppingListModel{

  late int id;
  late int refIdToShoppingList;
  late String productName;
  late String productBrand;
  late String image;
  late String? obs;
  late UnitTypes unitTypes;
  late double price;
  late double count;
  late double? secondCount;

  ItemShoppingListModel({
    required this.id,
    required this.refIdToShoppingList,
    required this.productName,
    required this.productBrand,
    required this.image,
    required this.unitTypes,
    required this.price,
    required this.count,
    this.secondCount,
    this.obs,
  });

}