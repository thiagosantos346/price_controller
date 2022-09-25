
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

  late String productName;
  late String productBrand;
  late String image;
  late String? obs;
  late UnitTypes unitTypes;
  late Double price;
  late Double count;
  late Double? secondCount;

  ItemShoppingListModel({
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