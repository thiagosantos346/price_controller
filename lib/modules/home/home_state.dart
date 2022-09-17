import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:price_controller/modules/login/login_page.dart';
import 'package:price_controller/widgets/elevatedButton/elevated_button_custom.dart';
import './home_page.dart';
import 'home_controller.dart';
import 'package:price_controller/widgets/styles/defaultTheme.dart';

class HomeState extends State<HomePage> {
  late final String title;
  late final HomeController controller;
  static const double _itemListHeigth = 120;
  static const EdgeInsets _itenListEdges = EdgeInsets.fromLTRB(0, 10, 10, 0);
  static const EdgeInsets _listEdges = EdgeInsets.fromLTRB(10, 10, 10, 10);
  static const Color _listColor = PersonalColors.colorPrimary;

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    // This is where you can initialize the resources needed by your app while
    // the splash screen is displayed.  Remove the following example because
    // delaying the user experience is a bad design practice!
    // ignore_for_file: avoid_print
    print('ready in 3...');
    await Future.delayed(const Duration(seconds: 1));
    print('ready in 2...');
    await Future.delayed(const Duration(seconds: 1));
    print('ready in 1...');
    await Future.delayed(const Duration(seconds: 1));
    print('go!');
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
        title: Container(
          child: Row(
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
                label: 'Sair',
                icon: const Icon(Icons.logout),
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
            label: 'Gerir despensa',
            icon: const Image(image: AssetImage('assets/images/ico_pantry.png')),
          ),
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
            label: 'Minhas listas de compra',
            icon: const Image(image: AssetImage('assets/images/ico_shopping_list.png')),
          ),
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
            label: 'Ir fazer as compras',
            icon: const Image(image: AssetImage('assets/images/ico_shopping_cart.png')),
          ),
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
            label: 'Meus dados de compras',
            icon: const Image(image: AssetImage('assets/images/ico_reports.png')),
          ),
        ],
      )
    );
  }
}
