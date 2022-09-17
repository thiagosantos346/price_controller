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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
              style: FontStyle.fontTextClean,
            ),
            Text(
              '$_counter',
              style: FontStyle.fontTextCleanVeryStrong,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
