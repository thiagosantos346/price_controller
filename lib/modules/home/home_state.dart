import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:price_controller/modules/login/login_page.dart';
import 'package:price_controller/modules/shopping_list/shopping_list_page.dart';
import 'package:price_controller/widgets/elevatedButton/elevated_button_custom.dart';
import './home_page.dart';
import 'home_controller.dart';
import 'package:price_controller/widgets/styles/defaultTheme.dart';

class HomeState extends State<HomePage> {
  late final String title;
  late final HomeController controller;
  static const double _itemListHeigth = 120;
  static const EdgeInsets _itemListEdges = EdgeInsets.fromLTRB(0, 10, 10, 0);
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
        primary: true,
        automaticallyImplyLeading: false,
        backgroundColor: PersonalColors.colorPrimaryVariant,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Menu',
              style: FontStyle.fontTextCleanBoldVeryBig,
            ),
            ElevatedButtonCustom(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              label: PersonalDecorations.centeredLabelButton('Sair') ,
              icon: const Icon(Icons.logout),
            )
          ],
        ),
      ),
      body: ListView(
        padding: _listEdges,
        children: <Widget>[
          ElevatedButtonCustom(
            edges: _itemListEdges,
            heigth: _itemListHeigth,
            color: _listColor,
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
            label: PersonalDecorations.centeredLabelButton('Gerir despensa'),
            icon: PersonalIcons.pantry(),
          ),
          ElevatedButtonCustom(
            edges: _itemListEdges,
            heigth: _itemListHeigth,
            color: _listColor,
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => ShoppingListPage()),
              );
            },
            label: PersonalDecorations.centeredLabelButton('Minhas listas de compra'),
            icon: PersonalIcons.shoppingList(),
          ),
          ElevatedButtonCustom(
            edges: _itemListEdges,
            heigth: _itemListHeigth,
            color: _listColor,
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
            label: PersonalDecorations.centeredLabelButton('Ir fazer as compras'),
            icon: PersonalIcons.shoppingCart(),
          ),
          ElevatedButtonCustom(
            edges: _itemListEdges,
            heigth: _itemListHeigth,
            color: _listColor,
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
            label: PersonalDecorations.centeredLabelButton('Meus dados de compras'),
            icon: PersonalIcons.reports(),
          ),
        ],
      )
    );
  }
}
