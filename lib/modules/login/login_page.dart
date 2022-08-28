import 'package:price_controller/widgets/textField/text_field_custom.dart';
import 'package:price_controller/modules/login/login_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:price_controller/widgets/styles/defaultTheme.dart';

class LoginPage extends GetView<LoginController> {
  LoginPage({Key? key}) : super(key: key);
  final _loginUserController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: PersonalColors.colorPrimaryMaterial.shade500,
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Padding(
              padding: Edges.edgeToLeft,
              child: Center(
                child: Text(
                  'Entrar',
                  style: FontStyle.fontTextCleanVeryStrong,
                ),
              ),
            ),
            Padding(
              padding: Edges.edgeToLeftInMiddle,
              child: TextFieldCustom(
                '',
                controller: _loginUserController,
                placeHolder: 'example@ex.com',
                withLabel: true,
                numbersOnly: false,
              ),
            )
          ],
        ),
      ),
    );
  }
}
