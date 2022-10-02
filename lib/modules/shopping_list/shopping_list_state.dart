import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:intl/intl.dart';
import 'package:price_controller/modules/shopping_list/shopping_list_controller.dart';
import 'package:price_controller/modules/shopping_list/shopping_list_page.dart';
import 'package:price_controller/widgets/card_custom/card_custom.dart';
import 'package:price_controller/widgets/styles/defaultTheme.dart';
import 'package:price_controller/repositories/shopping_lists_repositories.dart';

import 'package:price_controller/widgets/elevatedButton/elevated_button_custom.dart';
import 'package:price_controller/widgets/textField/text_field_custom.dart';

class ShoppingListState extends State<ShoppingListPage> {
  late final ShoppingListRepository repository;
  late final String title;
  late final ShoppingListController controller;
  static const double _itemListHeigth = 120;
  static const EdgeInsets _itemListEdges = EdgeInsets.fromLTRB(0, 10, 10, 0);
  static const EdgeInsets _listEdges = EdgeInsets.fromLTRB(10, 10, 10, 10);
  static const Color _listColor = PersonalColors.colorPrimary;
  final _listNameController = TextEditingController();

  Future _createShoppingList() {
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          backgroundColor: PersonalColors.colorPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 16,
          child: SizedBox(
            height: 250,
            width: 500,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Nome da lista",
                    style: FontStyle.fontTextCleanBold,
                  ),
                  SizedBox(
                    width: 350,
                    height: 40,
                    child: TextFieldCustom(
                      '',
                      controller: _listNameController,
                      //placeHolder: 'Nome da Lista',
                      withLabel: true,
                      inputType: TextInputType.emailAddress,
                      validation: (value) {
                        if (value!.isEmpty) {
                          return "Nome da lista";
                        }
                        return null;
                      },
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: SizedBox(
                          width: 70,
                          height: 70,
                          child: PersonalIcons.assaiIco(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: SizedBox(
                          width: 212,
                          height: 40,
                          child: TextFieldCustom(
                            '',
                            controller: _listNameController,
                            //placeHolder: 'Nome da Lista',
                            withLabel: true,
                            inputType: TextInputType.emailAddress,
                            validation: (value) {
                              if (value!.isEmpty) {
                                return "Nome da lista";
                              }
                              return null;
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                  const Divider(
                    height: 5,
                    color: PersonalColors.colorOnPrimary,
                    thickness: 1,
                  ),
                  ElevatedButtonCustom(
                    edges: _itemListEdges,
                    heigth: 35,
                    width: 300,
                    color: PersonalColors.colorPrimaryVariant,
                    alignment: Alignment.center,
                    onPressed: () {
                      return;
                    },
                    label: Text(
                      'Confirmar',
                      style: FontStyle.fontTextClean,
                    ),
                    icon: const Icon(
                      Icons.check,
                      size: 20,
                    ),
                  ),
                  ElevatedButtonCustom(
                    edges: _itemListEdges,
                    heigth: 35,
                    width: 300,
                    alignment: Alignment.center,
                    color: PersonalColors.colorPrimaryVariant,
                    onPressed: () {
                      return;
                    },
                    label: Text(
                      'Cancelar',
                      style: FontStyle.fontTextClean,
                    ),
                    icon: const Icon(
                      Icons.close,
                      size: 20,
                    ),
                    //icon: const Icon(Icons.close),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

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
            textValueListName:
                repository.getAllShoppingListItems().elementAt(index).listName,
            textValueCreatedAt: DateFormat.yMd().format(repository
                .getAllShoppingListItems()
                .elementAt(index)
                .createdAt),
            textValueStatus: repository
                .getAllShoppingListItems()
                .elementAt(index)
                .statusToString(),
            textValueTotalList: repository
                .getAllShoppingListItems()
                .elementAt(index)
                .totalValue
                .toString(),
            onPressedDeleteButton: () => {
              setState(() {
                repository.delete(index);
              })
            },
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
              (repository.length == 0)
                  ? Text(
                      'Não existem Listas de compra',
                      style: FontStyle.fontTextCleanBoldBig,
                    )
                  : ElevatedButtonCustom(
                      alignment: Alignment.center,
                      icon: const Icon(Icons.playlist_add),
                      width: 350,
                      heigth: 30,
                      label: Text(
                        "Criar nova lista",
                        style: FontStyle.fontTextCleanBoldBig,
                      ),
                      onPressed: () {
                        _createShoppingList();
                      },
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
