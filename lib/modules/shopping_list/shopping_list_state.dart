import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:price_controller/modules/login/login_page.dart';
import 'package:price_controller/modules/shopping_list/shopping_list_controller.dart';
import 'package:price_controller/modules/shopping_list/shopping_list_page.dart';
import 'package:price_controller/widgets/elevatedButton/elevated_button_custom.dart';
import 'package:price_controller/widgets/styles/defaultTheme.dart';

class ShoppingListState extends State<ShoppingListPage> {
  late final String title;
  late final ShoppingListController controller;
  static const double _itemListHeigth = 120;
  static const EdgeInsets _itenListEdges = EdgeInsets.fromLTRB(0, 10, 10, 0);
  static const EdgeInsets _listEdges = EdgeInsets.fromLTRB(10, 10, 10, 10);
  static const Color _listColor = PersonalColors.colorPrimary;

  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    await Future.delayed(const Duration(seconds: 1));
    await Future.delayed(const Duration(seconds: 1));
    await Future.delayed(const Duration(seconds: 1));
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PersonalColors.colorPrimary,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        backgroundColor: PersonalColors.colorPrimaryVariant,
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Minhas listas de compras',
                style: FontStyle.fontTextCleanBoldBig,
              )
            ],
          ),
        ),
      ),
      body: ListView(
        padding: _listEdges,
        children: <Widget>[
          ElevatedButtonCustom(
            edges: _itenListEdges,
            heigth: _itemListHeigth,
            color: _listColor,
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
            label: PersonalDecorations.centeredLabelButton('Gerir despensa'),
            icon: PersonalIcons.assaiIco(),
          )
        ],
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
