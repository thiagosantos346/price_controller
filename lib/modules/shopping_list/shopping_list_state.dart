import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:intl/intl.dart';
import 'package:price_controller/modules/shopping_list/shopping_list_controller.dart';
import 'package:price_controller/modules/shopping_list/shopping_list_page.dart';
import 'package:price_controller/widgets/card_custom/card_custom.dart';
import 'package:price_controller/widgets/styles/defaultTheme.dart';
import 'package:price_controller/repositories/shopping_lists_repositories.dart';

class ShoppingListState extends State<ShoppingListPage> {
  late final ShoppingListRepository repository;
  late final String title;
  late final ShoppingListController controller;
  static const double _itemListHeigth = 120;
  static const EdgeInsets _itemListEdges = EdgeInsets.fromLTRB(0, 10, 10, 0);
  static const EdgeInsets _listEdges = EdgeInsets.fromLTRB(10, 10, 10, 10);
  static const Color _listColor = PersonalColors.colorPrimary;

  @override
  void initState() {
    super.initState();
    repository = ShoppingListRepository();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PersonalColors.colorPrimary,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        backgroundColor: PersonalColors.colorPrimaryVariant,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Minhas listas de compras',
              style: FontStyle.fontTextCleanBoldBig,
            )
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: repository.length,
        padding: _listEdges,
        itemBuilder: (BuildContext context, int index) {
          return CardCustom(
            textValueListName: repository.getAllShoppingListItems().elementAt(index).listName,
            textValueCreatedAt: DateFormat.yMd().format( repository.getAllShoppingListItems().elementAt(index).createdAt ) ,
            textValueStatus: repository.getAllShoppingListItems().elementAt(index).statusToString(),
            textValueTotalList: repository.getAllShoppingListItems().elementAt(index).totalValue.toString(),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        color: PersonalColors.colorPrimaryVariant,
        child: Container(
          height: 45,
          decoration: BoxDecoration(
            boxShadow: PersonalDecorations.defaultShadows(),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Não existem Listas de compra',
                style: FontStyle.fontTextCleanBoldBig,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
