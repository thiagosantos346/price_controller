import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import 'package:price_controller/widgets/card_custom/card_custom.dart';
import 'package:price_controller/widgets/elevatedButton/elevated_button_custom.dart';
import 'package:price_controller/widgets/styles/defaultTheme.dart';
import 'package:price_controller/widgets/textField/text_field_custom.dart';

import 'package:price_controller/repositories/item_shopping_lists_repositories.dart';

import 'package:price_controller/models/shopping_list_model.dart';

import 'package:price_controller/modules/shopping_list/item_shopping_list/item_shopping_list_page.dart';
import 'package:price_controller/modules/shopping_list/item_shopping_list/item_shopping_list_controller.dart';

class ItemShoppingListState extends State<ItemShoppingListPage> {
  late ItemShoppingListRepository repository;
  late String title;
  late ItemShoppingListController controller;
  static const double _itemListHeigth = 120;
  static const EdgeInsets _itemListEdges = EdgeInsets.fromLTRB(0, 10, 10, 0);
  static const EdgeInsets _listEdges = EdgeInsets.fromLTRB(10, 10, 10, 10);
  static const Color _listColor = PersonalColors.colorPrimary;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    repository = Provider.of<ItemShoppingListRepository>(context);

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
      body: (repository.length > 0)
          ? ListView.builder(
              itemCount: repository.length,
              padding: _listEdges,
              itemBuilder: (BuildContext context, int index) {
                return CardCustom(
                  textValueListName: repository
                      .getAllShoppingListItems()
                      .elementAt(index)
                      .productName,
                  textValueCreatedAt: repository
                      .getAllShoppingListItems()
                      .elementAt(index)
                      .price
                      .toString(),
                  textValueStatus: repository
                      .getAllShoppingListItems()
                      .elementAt(index)
                      .count
                      .toString(),
                  textValueTotalList: repository
                      .getAllShoppingListItems()
                      .elementAt(index)
                      .obs!,
                  onPressedDeleteButton: () => {
                    setState(() {
                      repository.delete(index);
                    })
                  },
                );
              },
            )
          : Center(
              child: BottomAppBarAddButton(
                repository: repository,
                onBody: true,
              ),
            ),
      bottomNavigationBar: BottomAppBar(
        color: PersonalColors.colorPrimaryVariant,
        child: BottomAppBarAddButton(
          repository: repository,
          onBody: false,
        ),
      ),
    );
  }
}

class BottomAppBarAddButton extends StatefulWidget {
  const BottomAppBarAddButton({
    Key? key,
    required this.repository,
    required this.onBody,
  }) : super(key: key);

  final ItemShoppingListRepository repository;
  final bool onBody;

  @override
  State<BottomAppBarAddButton> createState() => _BottomAppBarAddButtonState();
}

class _BottomAppBarAddButtonState extends State<BottomAppBarAddButton> {
  final _listNameController = TextEditingController();
  final _listLocalController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final EdgeInsets _itemListEdges = const EdgeInsets.fromLTRB(0, 10, 10, 0);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        boxShadow: PersonalDecorations.defaultShadows(),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          (widget.repository.length == 0 && !widget.onBody)
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
                  onPressed: () => {buildShowDialogCreateShoppingList(context)},
                ),
        ],
      ),
    );
  }

  Future<dynamic> buildShowDialogCreateShoppingList(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          backgroundColor: PersonalColors.colorPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 16,
          child: Form(
            key: _formKey,
            child: SizedBox(
              height: 255,
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
                      height: 40,
                      width: 350,
                      child: TextFieldCustom(
                        '',
                        controller: _listNameController,
                        withLabel: false,
                        inputType: TextInputType.emailAddress,
                        validation: (value) {
                          return (value!.trim().isEmpty)
                              ? "Qual é o nome da lista?"
                              : null;
                        },
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: SizedBox(
                            height: 70,
                            width: 70,
                            child: PersonalIcons.assaiIco(),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Local",
                                  style: FontStyle.fontTextCleanBold,
                                ),
                                SizedBox(
                                  width: 212,
                                  height: 40,
                                  child: TextFieldCustom(
                                    '',
                                    controller: _listLocalController,
                                    withLabel: false,
                                    inputType: TextInputType.text,
                                    validation: (value) {
                                      return (value!.trim().isEmpty)
                                          ? "Onde você vai comprar?"
                                          : null;
                                    },
                                  ),
                                ),
                              ],
                            ))
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
                        if (_formKey.currentState!.validate()) {
                          widget.repository.addShoppingList(
                            shoppingList: ShoppingListModel(
                              listName: _listNameController.text,
                              marketName: _listLocalController.text,
                              createdAt: DateTime.now(),
                              status: ShoppingListStatus.unarchived,
                              totalValue: 0,
                            ),
                          );
                          _listNameController.clear();
                          _listLocalController.clear();
                          Navigator.pop(context, false);
                        }
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
                        setState(() {
                          _listNameController.clear();
                          _listLocalController.clear();
                          Navigator.pop(context, false);
                        });
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
          ),
        );
      },
    );
  }
}
